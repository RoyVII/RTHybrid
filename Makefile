#############################################################################
# Makefile for building: rtbiomanager
# Generated by qmake (3.0) (Qt 5.7.1)
# Project:  rtbiomanager.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt5/bin/qmake -o Makefile rtbiomanager.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_DEPRECATED_WARNINGS -DQT_NO_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -m64 -pipe -lpthread -D_GNU_SOURCE -lrt -lm -lcomedi -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -I. -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64
QMAKE         = /usr/lib/x86_64-linux-gnu/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = rtbiomanager1.0.0
DISTDIR = /home/gnb/Desktop/dic17/RTBiomanager/.tmp/rtbiomanager1.0.0
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS) -L/usr/X11R6/lib64 -D_GNU_SOURCE -lrt -lm -lcomedi -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = gui/main.cpp \
		gui/rtbiomanager.cpp \
		clamp/src/model_library.c \
		clamp/src/rt_thread_functions.c \
		clamp/src/writer_thread_functions.c \
		clamp/src/comedi_functions.c \
		clamp/src/calibrate_functions_phase2_a.c \
		clamp/src/calibrate_functions_phase1.c \
		clamp/src/calibrate_functions_phase2.c \
		clamp/src/time_functions.c \
		clamp/src/queue_functions.c \
		clamp/src/clamp.c moc_rtbiomanager.cpp
OBJECTS       = main.o \
		rtbiomanager.o \
		model_library.o \
		rt_thread_functions.o \
		writer_thread_functions.o \
		comedi_functions.o \
		calibrate_functions_phase2_a.o \
		calibrate_functions_phase1.o \
		calibrate_functions_phase2.o \
		time_functions.o \
		queue_functions.o \
		clamp.o \
		moc_rtbiomanager.o
DIST          = /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		rtbiomanager.pro gui/rtbiomanager.h \
		clamp/includes/calibrate_functions_phase1.h \
		clamp/includes/calibrate_functions_phase2.h \
		clamp/includes/calibrate_functions_phase2_a.h \
		clamp/includes/device_functions.h \
		clamp/includes/model_library.h \
		clamp/includes/queue_functions.h \
		clamp/includes/rt_thread_functions.h \
		clamp/includes/time_functions.h \
		common/includes/types.h \
		clamp/includes/writer_thread_functions.h \
		clamp/includes/clamp.h \
		clamp/includes/types_clamp.h gui/main.cpp \
		gui/rtbiomanager.cpp \
		clamp/src/model_library.c \
		clamp/src/rt_thread_functions.c \
		clamp/src/writer_thread_functions.c \
		clamp/src/comedi_functions.c \
		clamp/src/calibrate_functions_phase2_a.c \
		clamp/src/calibrate_functions_phase1.c \
		clamp/src/calibrate_functions_phase2.c \
		clamp/src/time_functions.c \
		clamp/src/queue_functions.c \
		clamp/src/clamp.c
QMAKE_TARGET  = rtbiomanager
DESTDIR       = 
TARGET        = rtbiomanager


first: all
####### Build rules

$(TARGET): ui_rtbiomanager.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: rtbiomanager.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		rtbiomanager.pro \
		/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Gui.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -o Makefile rtbiomanager.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_device_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
rtbiomanager.pro:
/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl:
/usr/lib/x86_64-linux-gnu/libQt5Gui.prl:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile rtbiomanager.pro

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents gui/rtbiomanager.h clamp/includes/calibrate_functions_phase1.h clamp/includes/calibrate_functions_phase2.h clamp/includes/calibrate_functions_phase2_a.h clamp/includes/device_functions.h clamp/includes/model_library.h clamp/includes/queue_functions.h clamp/includes/rt_thread_functions.h clamp/includes/time_functions.h common/includes/types.h clamp/includes/writer_thread_functions.h clamp/includes/clamp.h clamp/includes/types_clamp.h $(DISTDIR)/
	$(COPY_FILE) --parents gui/main.cpp gui/rtbiomanager.cpp clamp/src/model_library.c clamp/src/rt_thread_functions.c clamp/src/writer_thread_functions.c clamp/src/comedi_functions.c clamp/src/calibrate_functions_phase2_a.c clamp/src/calibrate_functions_phase1.c clamp/src/calibrate_functions_phase2.c clamp/src/time_functions.c clamp/src/queue_functions.c clamp/src/clamp.c $(DISTDIR)/
	$(COPY_FILE) --parents gui/rtbiomanager.ui $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all: moc_rtbiomanager.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_rtbiomanager.cpp
moc_rtbiomanager.cpp: gui/rtbiomanager.h \
		/usr/lib/x86_64-linux-gnu/qt5/bin/moc
	/usr/lib/x86_64-linux-gnu/qt5/bin/moc $(DEFINES) -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64 -I/home/gnb/Desktop/dic17/RTBiomanager -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/6 -I/usr/include/x86_64-linux-gnu/c++/6 -I/usr/include/c++/6/backward -I/usr/lib/gcc/x86_64-linux-gnu/6/include -I/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/6/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include gui/rtbiomanager.h -o moc_rtbiomanager.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_rtbiomanager.h
compiler_uic_clean:
	-$(DEL_FILE) ui_rtbiomanager.h
ui_rtbiomanager.h: gui/rtbiomanager.ui \
		/usr/lib/x86_64-linux-gnu/qt5/bin/uic
	/usr/lib/x86_64-linux-gnu/qt5/bin/uic gui/rtbiomanager.ui -o ui_rtbiomanager.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: gui/main.cpp gui/rtbiomanager.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o gui/main.cpp

rtbiomanager.o: gui/rtbiomanager.cpp gui/rtbiomanager.h \
		ui_rtbiomanager.h \
		clamp/includes/clamp.h \
		clamp/includes/rt_thread_functions.h \
		clamp/includes/time_functions.h \
		clamp/includes/model_library.h \
		clamp/includes/queue_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h \
		clamp/includes/calibrate_functions_phase1.h \
		clamp/includes/device_functions.h \
		clamp/includes/calibrate_functions_phase2_a.h \
		clamp/includes/calibrate_functions_phase2.h \
		clamp/includes/writer_thread_functions.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o rtbiomanager.o gui/rtbiomanager.cpp

model_library.o: clamp/src/model_library.c clamp/includes/model_library.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o model_library.o clamp/src/model_library.c

rt_thread_functions.o: clamp/src/rt_thread_functions.c clamp/includes/rt_thread_functions.h \
		clamp/includes/time_functions.h \
		clamp/includes/model_library.h \
		clamp/includes/queue_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h \
		clamp/includes/calibrate_functions_phase1.h \
		clamp/includes/device_functions.h \
		clamp/includes/calibrate_functions_phase2_a.h \
		clamp/includes/calibrate_functions_phase2.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o rt_thread_functions.o clamp/src/rt_thread_functions.c

writer_thread_functions.o: clamp/src/writer_thread_functions.c clamp/includes/writer_thread_functions.h \
		clamp/includes/queue_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o writer_thread_functions.o clamp/src/writer_thread_functions.c

comedi_functions.o: clamp/src/comedi_functions.c clamp/includes/device_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o comedi_functions.o clamp/src/comedi_functions.c

calibrate_functions_phase2_a.o: clamp/src/calibrate_functions_phase2_a.c clamp/includes/calibrate_functions_phase2_a.h \
		clamp/includes/calibrate_functions_phase2.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h \
		clamp/includes/queue_functions.h \
		clamp/includes/model_library.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o calibrate_functions_phase2_a.o clamp/src/calibrate_functions_phase2_a.c

calibrate_functions_phase1.o: clamp/src/calibrate_functions_phase1.c clamp/includes/calibrate_functions_phase1.h \
		clamp/includes/device_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h \
		clamp/includes/time_functions.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o calibrate_functions_phase1.o clamp/src/calibrate_functions_phase1.c

calibrate_functions_phase2.o: clamp/src/calibrate_functions_phase2.c clamp/includes/calibrate_functions_phase2.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o calibrate_functions_phase2.o clamp/src/calibrate_functions_phase2.c

time_functions.o: clamp/src/time_functions.c clamp/includes/time_functions.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o time_functions.o clamp/src/time_functions.c

queue_functions.o: clamp/src/queue_functions.c clamp/includes/queue_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o queue_functions.o clamp/src/queue_functions.c

clamp.o: clamp/src/clamp.c clamp/includes/clamp.h \
		clamp/includes/rt_thread_functions.h \
		clamp/includes/time_functions.h \
		clamp/includes/model_library.h \
		clamp/includes/queue_functions.h \
		clamp/includes/types_clamp.h \
		common/includes/types.h \
		clamp/includes/calibrate_functions_phase1.h \
		clamp/includes/device_functions.h \
		clamp/includes/calibrate_functions_phase2_a.h \
		clamp/includes/calibrate_functions_phase2.h \
		clamp/includes/writer_thread_functions.h
	$(CC) -c $(CFLAGS) $(INCPATH) -o clamp.o clamp/src/clamp.c

moc_rtbiomanager.o: moc_rtbiomanager.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_rtbiomanager.o moc_rtbiomanager.cpp

####### Install

install:  FORCE

uninstall:  FORCE

FORCE:

