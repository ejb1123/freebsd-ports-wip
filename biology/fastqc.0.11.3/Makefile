# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$

PORTNAME=	fastqc
PORTVERSION=	0.11.3
CATEGORIES=	biology
MASTER_SITES=	http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
DISTNAME=	${PORTNAME}_v${PORTVERSION}

MAINTAINER=	bacon4000@gmail.com
COMMENT=	A quality control tool for high throughput sequence data

LICENSE=	GPLv3

USES=		zip perl5 shebangfix
USE_JAVA=	yes
USE_PERL5=	run
SHEBANG_FILES=	fastqc

WRKSRC=		${WRKDIR}/FastQC

NO_BUILD=	yes

post-patch:
	${REINPLACE_CMD} -e "s|%%JAVAJARDIR%%|${JAVAJARDIR}|g" ${WRKSRC}/fastqc

do-install:
	${MKDIR} ${STAGEDIR}${JAVAJARDIR}
	${INSTALL_DATA} ${WRKSRC}/*.jar ${STAGEDIR}${JAVAJARDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/fastqc \
		${STAGEDIR}${PREFIX}/bin
	cd ${WRKSRC} && ${COPYTREE_SHARE} 'Configuration Templates uk' \
		${STAGEDIR}${DATADIR}
	cd ${WRKSRC} && ${COPYTREE_SHARE} 'Help' \
		${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
