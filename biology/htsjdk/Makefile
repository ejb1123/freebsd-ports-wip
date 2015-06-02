# Created by: Jason Bacon <bacon@sculpin.jbacon.dyndns.org>
# $FreeBSD$

PORTNAME=	htsjdk
PORTVERSION=	1.133
CATEGORIES=	biology
MASTER_SITES=	http://github.com/samtools/htsjdk/archive/
DISTNAME=	${PORTVERSION}

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	bacon@sculpin.jbacon.dyndns.org
COMMENT=	Generic format for storing large nucleotide sequence alignments

# Prefers 1.6, 1.7 should work, but jars built with 1.7 won't run in 1.6 env
USE_JAVA=	1.6+

MAKE_ENV=	JAVA_HOME=${JAVA_HOME}

# http://samtools.github.io/htsjdk/building.html#BuildingHtsJdk
do-build:
	cd ${WRKSRC} && ant && ant htsjdk-jar

do-install:
	${INSTALL_DATA} ${WRKSRC}/dist/${PORTNAME}-${PORTVERSION}.jar \
		${STAGEDIR}${JAVAJARDIR}/${PORTNAME}.jar

.include <bsd.port.mk>