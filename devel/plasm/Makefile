# New ports collection makefile for:    plasm
# Date created:         2010-07-21
# Whom:                 Jason Bacon <bacon4000@gmail.com>
#
# $FreeBSD$
#

PORTNAME=       plasm
PORTVERSION=    0.1
CATEGORIES=     devel
MASTER_SITES=   http://acadix.biz/Ports/distfiles/

MAINTAINER=     bacon4000@gmail.com
COMMENT=        Portable Assembler

PLIST_FILES=    bin/plasm \
		bin/plasm.bin \
		include/plasm-epc-bits.h \
		man/man1/plasm.1.gz

RUN_DEPENDS=	papp:/usr/wip/devel/papp

USES=		tar:xz
.include <bsd.port.pre.mk>
.if ${ARCH} == "powerpc"
USE_GCC=	yes
.endif

MAKE_FLAGS+=	PREFIX=${STAGEDIR}${PREFIX} \
		MANPREFIX=${STAGEDIR}${PREFIX}

pre-build:
	make depend

.include <bsd.port.post.mk>
