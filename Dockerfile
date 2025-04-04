FROM atdr.meo.ws/archiveteam/grab-base
RUN apt-get update \
  && apt-get install -y --no-install-recommends zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*
RUN luarocks install lua-zlib
