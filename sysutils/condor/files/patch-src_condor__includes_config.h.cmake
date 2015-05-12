--- src/condor_includes/config.h.cmake.orig	2015-04-07 15:10:11 UTC
+++ src/condor_includes/config.h.cmake
@@ -16,7 +16,11 @@
  * 
  *************************************************************/
 
-/* config.h.cmake.  Generated from configure.ac by autoheader. -> then updated for cmake */
+/*
+ * config.h.cmake.  Generated from configure.ac by autoheader.
+ * config.h generated by cmake using system info gathered by
+ * build/cmake/macros/SystemSpecificInformations.cmake.
+ */
 
 #ifndef __CONFIGURE_H_CMAKE__
 #define __CONFIGURE_H_CMAKE__
@@ -47,6 +51,10 @@
 #cmakedefine CONDOR_FREEBSD7
 ///* Define if on FreeBSD 8 */
 #cmakedefine CONDOR_FREEBSD8
+///* Define if on FreeBSD 9 */
+#cmakedefine CONDOR_FREEBSD9
+///* Define if on FreeBSD 9 or later, which use utmpx insead of utmp */
+#cmakedefine CONDOR_UTMPX
 ///* Define if on FreeBSD */
 #cmakedefine CONDOR_FREEBSD
 ///* Define release of FreeBSD (i.e. 7.4, 8.2) */
@@ -55,6 +63,7 @@
 #cmakedefine FREEBSD_MAJOR
 ///* Define minor release of FreeBSD */
 #cmakedefine FREEBSD_MINOR
+
 //////////////////////////////////////////////////
 
 //////////////////////////////////////////////////
