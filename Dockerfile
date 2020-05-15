FROM ubuntu

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
      mono-runtime-common \
   && rm -r /var/lib/apt/lists/*

RUN apt-get update \
   && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
      meson ninja-build sassc pkg-config libglib2.0 libgtk-3-dev \
   && rm -r /var/lib/apt/lists/*

RUN mkdir /dist && chmod 777 /dist

WORKDIR /build
