# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$
# Deps: http://ceres-solver.org/building.html
# eigen 3.2.2+, cmake 2.8.0+, Google Log 0.3.1+, Google Flags, SuiteSparse,
# CXSparse (alternative to SuiteSparse), BLAS, LAPACK (OpenBLAS without threading)

PORTNAME=	ceres-solver
PORTVERSION=	1.11.0
CATEGORIES=	math
MASTER_SITES=	http://ceres-solver.org/

MAINTAINER=	bacon4000@gmail.com
COMMENT=	Library for modeling and solving complicated optimization problems

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/eigen3.pc:math/eigen3
LIB_DEPENDS=	libglog.so:devel/glog \
		libgflags.so:devel/gflags \
		libumfpack.so:math/suitesparse

USES=		cmake

CXXFLAGS+=	-fPIC

CMAKE_VERBOSE=	yes

.include <bsd.port.mk>
