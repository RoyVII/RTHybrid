#include "../includes/calibrate_functions_phase2_a.h"

double res_phase = 0;
int cal_on = TRUE;
int aux_counter = 0;
int aux_counter2 = TRUE;

/*Case 7 - Auto map*/
double g_max_r_to_v, g_max_v_to_r;
double *g_r_to_v, *g_v_to_r;

int auto_calibration(
					rt_args * args,
					calibration_args * cs,
					double * ret_values,
					double rafaga_viva_pts,
					double * ecm_result,
					message * msg,
                    double * lectura_a,
                    double * lectura_b,
                    double * lectura_t,
                    int size_lectura,
                    int cont_send,
                    double ini_k1,
                    double ini_k2,
                    syn_params syn_params_live_to_model,
                    syn_params syn_params_model_to_live
					){

	if(args->calibration==1 || args->calibration==2 || args->calibration==3){

		
        //Electrica en fase - ecm
		int ret_ecm = calc_ecm(args->vars[0] * cs->scale_virtual_to_real + cs->offset_virtual_to_real, ret_values[0], rafaga_viva_pts, ecm_result);
        msg->ecm = *ecm_result;

        if(cal_on && ret_ecm==1){
        	int is_syn=FALSE;
            if (args->calibration == 1){
                //Porcentaje
                is_syn = is_syn_by_percentage(*ecm_result, args->auto_cal_val_1);
            }else if (args->calibration == 2){
                //Pendiente
                is_syn = is_syn_by_slope(*ecm_result);
            }else if (args->calibration == 3){
                //Var
                is_syn = is_syn_by_variance(*ecm_result);
            }

            if (is_syn==TRUE){
                printf("CALIBRATION END: g=%f\n", syn_params_model_to_live.g[0]);
                cal_on=FALSE;
            }else if(is_syn==FALSE && cal_on==TRUE){
                //printf("%f\n", g_virtual_to_real[0]);
                change_g(&syn_params_model_to_live.g[0]);
                change_g(&syn_params_live_to_model.g[0]);
            }
        }

	}else if (args->calibration==4){

        /***** REVISAR *******/
        //Electrica y var
        if(aux_counter<size_lectura){
            /*Guardamos info*/
            lectura_b[aux_counter]=args->vars[0] * cs->scale_virtual_to_real + cs->offset_virtual_to_real;
            lectura_a[aux_counter]=ret_values[0];
            lectura_t[aux_counter]=msg->t_absol;
            msg->ecm = res_phase;
            aux_counter++;
        }else{
            /*Ejecuta metrica*/
            int is_syn = 0;
            //is_syn = calc_phase (lectura_b, lectura_a, lectura_t, size_lectura, cs->max_real_relativo, cs->min_real, &res_phase, args->anti);
            msg->ecm = res_phase;

            printf("var = %f\n", msg->ecm);
            if(cal_on){
                if (is_syn==TRUE){
                    printf("CALIBRATION END: g=%f\n", syn_params_model_to_live.g[0]);
                    cal_on=FALSE;
                }else if (is_syn==FALSE){
                    change_g(&syn_params_model_to_live.g[0]);
                    change_g(&syn_params_live_to_model.g[0]);
                } 
            }
            aux_counter=0;
        }

    }else if(args->calibration==6){
        aux_counter++;
        if(aux_counter == 10000*3){
            args->params[R_HR]+=0.0006;
            printf("%f\n", args->params[R_HR]);
            aux_counter=0;
        }
        calc_ecm(args->vars[0] * cs->scale_virtual_to_real + cs->offset_virtual_to_real, ret_values[0], rafaga_viva_pts, ecm_result);
        msg->ecm = *ecm_result;
        msg->extra = args->params[R_HR];
        
    }else if(args->calibration==7){
        /*Primero vez seleccionamos que queremos*/
        // Identificamos que se quiere cambiar
        // Tenemos variables para cada sentido sin importar si es lenta o rapida
        if (aux_counter2==TRUE){
                aux_counter2=FALSE;

                if (cs->g_real_to_virtual[GL_G_FAST]!=0){
                	//printf("Hacia modelo es rapida\n");
                    g_max_r_to_v = cs->g_real_to_virtual[GL_G_FAST];
                    g_r_to_v = &syn_params_live_to_model.g[GL_G_FAST];
                    //printf("Después rvf%p\n", g_r_to_v);

                }else{
                	//printf("Hacia modelo es lenta\n");
                    g_max_r_to_v = cs->g_real_to_virtual[GL_G_SLOW];
                    g_r_to_v = &syn_params_live_to_model.g[GL_G_SLOW];
                    //printf("Después rvs%p\n", g_r_to_v);
                }

                if (cs->g_virtual_to_real[GL_G_FAST]!=0){
                    //printf("Hacia viva es rapida\n");
                    g_max_v_to_r = cs->g_virtual_to_real[GL_G_FAST];
                    g_v_to_r = &syn_params_model_to_live.g[GL_G_FAST];
                    //printf("Después vrf%p\n", g_v_to_r);
                }else{
                	//printf("Hacia viva es lenta\n");
                    g_max_v_to_r = cs->g_virtual_to_real[GL_G_SLOW];
                    g_v_to_r = &syn_params_model_to_live.g[GL_G_SLOW];
                    //printf("Después vrs%p\n", g_v_to_r);
                }
        }

        if (cal_on==TRUE){
            int tiempo_por_punto=10;

            if (DEBUG == 1) syslog(LOG_INFO, "RT_THREAD: Autocal - Chem Map 7");

            //Mapa de conductancia
            aux_counter++;
            if (aux_counter >= args->freq*tiempo_por_punto){
                aux_counter=0;
                *g_v_to_r += args->step_v_to_r;
                //printf("r_v = %f\n", *g_v_to_r);
                if (*g_v_to_r > g_max_v_to_r){
                    *g_v_to_r = 0;
                    *g_r_to_v += args->step_r_to_v;
                    //printf("v_r = %f\n", *g_r_to_v);
                    if(*g_r_to_v > g_max_r_to_v){
                        *g_v_to_r = 0;
                        *g_r_to_v = 0;
                        cal_on=FALSE;
                        return TRUE;
                    }
                }
                
                
            }


        }

    }else if(args->calibration==8){
        syn_gl_params * aux_gl = syn_params_model_to_live.type_params;

        if (cal_on==TRUE){
            /*Los ini se cambian en rt thread*/
            double paso_k1 = 0.3;
            double paso_k2 = 0.02;
            double max_k1 = 1.6;
            double max_k2 = 0.1;

            //Mapa de k
            aux_counter++;
            if (aux_counter>=10000*10){ //Cada 10s hay cambio
                aux_counter=0;
                aux_gl->k1 += paso_k1;

                if(aux_gl->k1 >= max_k1){
                    aux_gl->k1 = ini_k1;
                    aux_gl->k2 += paso_k2;

                    if(aux_gl->k2 >= max_k2){
                        printf("FIN\n");
                        printf("Apuntar: %d\n", cont_send);
                        aux_gl->k1 = 0.0;
                        aux_gl->k2 = 0.0;
                        cal_on=FALSE;
                        return TRUE;
                    }
                }
            }
        }
        msg->ecm = aux_gl->k1;
        msg->extra = aux_gl->k2;
    }
    return FALSE;

}

/* Ordenar los ficheros de calibraciones */
void calcula_escala (double min_virtual, double max_virtual, double min_viva, double max_viva, double *scale_virtual_to_real, double *scale_real_to_virtual, double *offset_virtual_to_real, double *offset_real_to_virtual){
    
    double rg_virtual, rg_viva;
    
    rg_virtual = max_virtual-min_virtual;
    rg_viva = max_viva-min_viva;
    
    //printf("rg_virtual=%f, rg_viva=%f\n", rg_virtual, rg_viva);
    
    *scale_virtual_to_real = rg_viva / rg_virtual;
    *scale_real_to_virtual = rg_virtual / rg_viva;
    
    *offset_virtual_to_real = min_viva - (min_virtual*(*scale_virtual_to_real));
    *offset_real_to_virtual = min_virtual - (min_viva*(*scale_real_to_virtual));

    //printf("ESCALAS CALCULADAS\n\n");
    return;
}


void fix_drift (fix_drift_args args) {
    double per_min = 0.1, per_max = 0.1;

    calcula_escala (args.min_abs_model, args.max_abs_model, *(args.min_window), *(args.max_window), args.scale_virtual_to_real, args.scale_real_to_virtual, args.offset_virtual_to_real, args.offset_real_to_virtual);

    args.syn_aux_params_live_to_model->offset = *(args.offset_real_to_virtual);
    args.syn_aux_params_live_to_model->scale = *(args.scale_real_to_virtual);

    args.syn_aux_params_model_to_live->offset = *(args.offset_virtual_to_real);
    args.syn_aux_params_model_to_live->scale = *(args.scale_virtual_to_real);

    if (args.model == GOLOWASCH) {
        syn_gl_params * aux_gl_drift = args.syn_aux_params_live_to_model->type_params;

        aux_gl_drift->min = *(args.min_window);
        aux_gl_drift->max = *(args.max_window);
    }

    if(*(args.min_window) > 0){
        *(args.min_rel_real) = *(args.min_window) + (*(args.min_window) * per_min);
    }else{
        *(args.min_rel_real) = *(args.min_window) - (*(args.min_window) * per_min);
    }

    if(*(args.max_window) > 0){
        *(args.max_rel_real) = *(args.max_window) - (*(args.max_window) * per_max);
    }else{
        *(args.max_rel_real) = *(args.max_window) + (*(args.max_window) * per_max);
    }

    return;
}