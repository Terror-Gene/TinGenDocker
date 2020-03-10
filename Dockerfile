FROM lsiobase/alpine:3.9

# TODO: We're including the entire LSIO python command since we still need the build-dependencies packages to compile hactool if it ever gets used again. Also, this way we use the multi-arch docker images that Linux Server makes, but with python3.

RUN echo "**** install build packages ****" && \
 apk add --no-cache --virtual=build-dependencies \
	autoconf \
	automake \
	freetype-dev \
	g++ \
	gcc \
	jpeg-dev \
	lcms2-dev \
	libffi-dev \
	libpng-dev \
	libwebp-dev \
	linux-headers \
	make \
	openjpeg-dev \
	openssl-dev \
	python3-dev \
	tiff-dev \
	zlib-dev && \
 echo "**** install runtime packages ****" && \
 apk add --no-cache \
	curl \
	freetype \
	git \
	lcms2 \
	libjpeg-turbo \
	libwebp \
	openjpeg \
	openssl nodejs \
	p7zip \
	py3-lxml \
	python3 \
	tar \
	tiff \
	unrar \
	unzip \
	vnstat \
	wget \
	xz \
	zlib && \
 echo "**** use ensure to check for pip and link /usr/bin/pip3 to /usr/bin/pip ****" && \
 python3 -m ensurepip && \
 rm -r /usr/lib/python*/ensurepip && \
 if \
	[ ! -e /usr/bin/pip ]; then \
	ln -s /usr/bin/pip3 /usr/bin/pip ; fi && \
 echo "**** install pip packages ****" && \
 pip install --no-cache-dir -U \
	pip \
	setuptools && \
 pip install -U \
	configparser \
	ndg-httpsclient \
	notify \
	paramiko \
	pillow \
	psutil \
	pyopenssl \
	requests \
	setuptools \
	urllib3 \
	virtualenv && \
 echo "**** clean up ****" && \
 apk del --purge \
	build-dependencies && \
 rm -rf \
	/root/.cache \
	/tmp/*

RUN apk add git

# TODO: For now, we aren't going to compile hactool, since it doesn't appear to be used anywhere
COPY files/pip.txt pip.txt

# Install the dependencies
RUN  pip install -r /pip.txt

ENV PYTHONIOENCODING="UTF-8" 
RUN git clone --depth=1 https://github.com/yongbi85/doge /doge && git clone --depth=1 https://github.com/blawar/nut /doge/nut
COPY files/nut.conf /doge/nut/conf/nut.conf
COPY files/doge.config.json /doge/doge.config.json
COPY files/start_doge.sh /start_doge.sh
COPY files/users.conf /doge/nut/conf/users.conf

ENTRYPOINT ["/bin/sh","start_doge.sh"]