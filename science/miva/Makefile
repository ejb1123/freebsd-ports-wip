# New ports collection makefile for:	miva
# Date created:		2007-12-10
# Whom:			Jason W. Bacon
#
# $FreeBSD$
#

PORTNAME=	miva
PORTVERSION=	2.0
CATEGORIES=	science biology
MASTER_SITES=	http://www.neuro.mcw.edu/Ports/distfiles/MIVA/ \
		http://ccni.wpi.edu/downloads/
DISTFILES=	MIVA20BC83Linux_042005a.tar.gz \
		MIVA20BC83Linux_042005c.tar.gz \
		MIVA20BC83Linux_042005d.tar.gz

MAINTAINER=	bacon4000@gmail.com
COMMENT=	Analysis of FMRI Animal Data

USE_LINUX=	yes
NO_BUILD=	yes

OPTIONS=	EXAMPLES	"Install examples"	off

.include <bsd.port.pre.mk>
.if defined(WITH_EXAMPLES)
DISTFILES+=	CWB-examples.tar.gz
.endif
.include <bsd.port.post.mk>
