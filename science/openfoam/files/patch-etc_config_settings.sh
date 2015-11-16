--- etc/config/settings.sh.orig	2015-11-03 04:30:23.000000000 -0600
+++ etc/config/settings.sh	2015-11-14 07:54:13.000000000 -0600
@@ -65,6 +65,25 @@
 export WM_ARCH=`uname -s`
 
 case "$WM_ARCH" in
+FreeBSD)
+    WM_ARCH=FreeBSD
+    case `uname -m` in
+    i386|powerpc)
+        export WM_ARCH_OPTION=32
+        ;;
+
+    x86_64|powerpc64)
+        export WM_COMPILER_ARCH=64
+        export WM_CC='gcc48'
+        export WM_CXX='g++48'
+        export WM_CFLAGS='-fPIC'
+        export WM_CXXFLAGS='-fPIC'
+        export WM_LDFLAGS=''
+        ;;
+
+    esac
+    ;;
+
 Linux)
     WM_ARCH=linux
 
@@ -391,8 +410,9 @@
 SYSTEMOPENMPI)
     # Use the system installed openmpi, get library directory via mpicc
     export FOAM_MPI=openmpi-system
+    export PATH=${PATH}:/usr/local/mpi/openmpi/bin
 
-    libDir=`mpicc --showme:link | sed -e 's/.*-L\([^ ]*\).*/\1/'`
+    libDir=`mpicc --showme:link | gsed -e 's/.*-L\([^ ]*\).*/\1/'`
 
     # Bit of a hack: strip off 'lib' and hope this is the path to openmpi
     # include files and libraries.