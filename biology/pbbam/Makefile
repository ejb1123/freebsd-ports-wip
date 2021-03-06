# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$

PORTNAME=	pbbam
PORTVERSION=	2016.09.13
CATEGORIES=	biology

MAINTAINER=	bacon4000@gmail.com
COMMENT=	PacBio BAM C++ library, with SWIG bindings

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

# Add when tests are enabled	libgtest.so:devel/googletest
# FIXME: Guessing at actual boost lib needed
LIB_DEPENDS=	libhts.so:biology/htslib \
		libboost_regex.so.1.60.0:/usr/wip/devel/boost-libs

USES=		cmake:outsource compiler:c++11-lang ssl

USE_GITHUB=	yes
GH_ACCOUNT=	PacificBiosciences
GH_TAGNAME=	e46654e0e0b816230c16f4a6132c1feff633a62a

WRKSRC=		${WRKDIR}/${PORTNAME}-${GH_TAGNAME}

# FIXME: Disable tests for now.  Bound to bundled googletest.
CMAKE_ARGS+=	-DHTSLIB_INCLUDE_DIRS:STRING=${LOCALBASE}/include/htslib \
		-DHTSLIB_LIBRARIES:STRING="-L${LOCALBASE}/lib -lhts" \
		-DPacBioBAM_build_tests:BOOL=OFF \
		-DPacBioBAM_build_docs:BOOL=OFF

LDFLAGS+=	-L/usr/lib -lcrypto -lssl

.include <bsd.port.pre.mk>

.if ${OPSYS} == FreeBSD && ${OSVERSION} <= 1000000
IGNORE=	unsupported on FreeBSD 9 or older
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${STAGEDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/lib/* ${STAGEDIR}${PREFIX}/lib
	cd ${WRKSRC}/include && ${COPYTREE_SHARE} . ${STAGEDIR}${PREFIX}/include

.include <bsd.port.post.mk>
