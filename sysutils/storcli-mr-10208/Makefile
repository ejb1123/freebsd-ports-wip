# Created by: Hiroshi Fujishima <h-fujishima@sakura.ad.jp>
# $FreeBSD$

# This is the latest that seems to work with the PERC H700
PORTNAME=	storcli
PORTVERSION=	1.02.08
CATEGORIES=	sysutils
MASTER_SITES=	http://www.lsi.com/downloads/Public/MegaRAID%20Common%20Files/
PKGNAMESUFFIX=	-mr
DISTNAME=	${PORTVERSION}_StorCLI_Phase3

MAINTAINER=	bacon4000@gmail.com
COMMENT=	MegaRAID comand-line management utiliity

RESTRICTED=	Source recipient must acknowledge license. Reproduction or redistribution prohibited. See http://www.lsi.com/Pages/user/eula.aspx

ONLY_FOR_ARCHS= i386 amd64

USES=		zip
UNZIP_CMD=	/usr/bin/unzip
NO_BUILD=       yes
WRKSRC=		${WRKDIR}/FreeBSD

PLIST_FILES=    sbin/storcli${PKGNAMESUFFIX}

.include <bsd.port.pre.mk>

.if ${ARCH} == "i386"
BASENAME=storcli
.elif ${ARCH} == "amd64"
BASENAME=storcli64
.endif

post-extract:
	(cd ${WRKSRC} && \
		${UNZIP_CMD} ${EXTRACT_BEFORE_ARGS} \
		MR_SAS_CLI_StorCLI-1.02.08.zip)
	(cd ${WRKSRC} && \
		${UNZIP_CMD} ${EXTRACT_BEFORE_ARGS} ${BASENAME}.zip)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${BASENAME} \
		${STAGEDIR}${PREFIX}/sbin/storcli${PKGNAMESUFFIX}

.include <bsd.port.post.mk>
