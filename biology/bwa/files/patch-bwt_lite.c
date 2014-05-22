--- bwt_lite.c.orig	2014-05-21 12:45:26.000000000 -0500
+++ bwt_lite.c	2014-05-21 12:45:31.000000000 -0500
@@ -48,7 +48,7 @@
 	}
 	{ // generate cnt_table
 		for (i = 0; i != 256; ++i) {
-			u_int32_t j, x = 0;
+			uint32_t j, x = 0;
 			for (j = 0; j != 4; ++j)
 				x |= (((i&3) == j) + ((i>>2&3) == j) + ((i>>4&3) == j) + (i>>6 == j)) << (j<<3);
 			b->cnt_table[i] = x;