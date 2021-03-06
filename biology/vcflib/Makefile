# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$

PORTNAME=	vcflib
PORTVERSION=	6451cf639cc7d735137218c4b08f597ba9dd6e73
CATEGORIES=	biology

MAINTAINER=	bacon4000@gmail.com
COMMENT=	C++ library and CLI tools for parsing and manipulating VCF files

LICENSE=	MIT

LIB_DEPENDS=	libhts.so:biology/htslib \
		libtabix.so.1:/usr/wip/biology/tabixpp \
		libsw.so.1:/usr/wip/biology/smithwaterman
BUILD_DEPENDS=	fastahack>=0:/usr/wip/biology/fastahack \
		filevercmp>=0:/usr/wip/sysutils/filevercmp \
		fsom>=0:/usr/wip/biology/fsom \
		multichoose:/usr/wip/math/multichoose \
		intervaltree>=0:/usr/wip/math/intervaltree

# FIXME: compiler:openmp causes link error
USES=		gmake shebangfix
USE_LDCONFIG=	yes
USE_GITHUB=	yes
GH_ACCOUNT=	outpaddling
GH_TAGNAME=	${PORTVERSION}

CXXFLAGS+=	-I${LOCALBASE}/include/smithwaterman \
		-I${LOCALBASE}/include/multichoose \
		-I${LOCALBASE}/include/filevercmp \
		-I${LOCALBASE}/include/fastahack \
		-I${LOCALBASE}/include/intervaltree
# Hack for X120e
CFLAGS+=	-I/usr/include/clang/3.3

INSTALL_TARGET=	install-strip

.include <bsd.port.pre.mk>

# GCC disables sse2 by default on i386, but it's required for vcflib
.if ${ARCH} == i386
CFLAGS+=	-msse2
.endif

# MAKE_JOBS_UNSAFE=	yes
MAKEFILE=		Makefile.external-libs
INSTALL_TARGET=		install-strip

.include <bsd.port.post.mk>
