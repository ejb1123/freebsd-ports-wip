# Created by: Jason Bacon <bacon4000@gmail.com>
# $FreeBSD$

PORTNAME=	nibabel
PORTVERSION=	2.0.1
CATEGORIES=	python
MASTER_SITES=	CHEESESHOP
MASTER_SITE_SUBDIR=source/n/nibabel
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	bacon4000@gmail.com
COMMENT=	Provides read write access to common medical and neuroimaging formats

LICENSE=	MIT

USES=		python
USE_PYTHON=	autoplist distutils

# http://nipy.org/nibabel/installation.html#installation
#   Python 2.6 or greater
#   NumPy 1.5 or greater
#   SciPy (for full SPM-ANALYZE support)
#   PyDICOM 0.9.7 or greater (for DICOM support)
#   Python Imaging Library (for PNG conversion in DICOMFS)
#   nose 0.11 or greater (to run the tests)
#   sphinx (to build the documentation)

.include <bsd.port.mk>
