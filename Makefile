# Created by: Sergey Kozlov <kozlov.sergey.404@gmail.com>
# $FreeBSD$

PORTNAME=	freeswitch
PORTVERSION=	1.4.19
CATEGORIES=	net
MASTER_SITES=	http://files.freeswitch.org/freeswitch-releases/

MAINTAINER=	kozlov.sergey.404@gmail.com
COMMENT=	Scalable open source cross-platform telephony platform

LICENSE=	MPL

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${ETCDIR} \
		--with-certsdir=${ETCDIR}/tls \
		--with-dbdir=/var/db/${PORTNAME}

USES=	gmake

pre-configure:
	cd ${WRKSRC} && touch noreg # Disable registration joke in configure

.include <bsd.port.mk>
