--- src/cpp/core/system/PosixSystem.cpp.orig	2013-12-10 16:16:28.000000000 -0600
+++ src/cpp/core/system/PosixSystem.cpp	2016-04-30 11:11:48.751538751 -0500
@@ -38,6 +38,11 @@
 #include <mach-o/dyld.h>
 #endif
 
+#ifdef __FreeBSD__
+#include <sys/types.h>
+#include <sys/sysctl.h>
+#endif
+
 #include <boost/thread.hpp>
 #include <boost/format.hpp>
 #include <boost/lexical_cast.hpp>
@@ -638,6 +643,20 @@ Error executablePath(const char * argv0,
    // set it
    executablePath = std::string(&(buffer[0]));
 
+#elif defined(__FreeBSD__)
+   // use the KERN_PROC_PATHNAME sysctl mib to get path to current executable
+   int mib[4];
+   mib[0] = CTL_KERN;
+   mib[1] = KERN_PROC;
+   mib[2] = KERN_PROC_PATHNAME;
+   mib[3] = -1;
+
+   size_t bufSize = 2048;
+   char buffer[bufSize];
+   sysctl(mib, 4, buffer, &bufSize, NULL, 0);
+
+   // set it
+   executablePath = std::string(&(buffer[0]));
 
 #elif defined(HAVE_PROCSELF)
 
