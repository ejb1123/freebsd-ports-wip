# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD: ports-mgmt/genplist/Makefile 327762 2013-09-20 22:36:49Z bapt $

PORTNAME=	genplist
PORTVERSION=	1.2
CATEGORIES=	ports-mgmt
MASTER_SITES=	http://acadix.biz/Ports/distfiles/

MAINTAINER=	bacon4000@gmail.com
COMMENT=	Generates a static plist for a port

LICENSE=	BSD3CLAUSE

NO_BUILD=	yes
USES=		tar:xz

PLIST_FILES=	bin/genplist man/man1/genplist.1.gz

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/genplist ${STAGEDIR}${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/genplist.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
