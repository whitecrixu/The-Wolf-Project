FROM alpine:3.19 AS build

LABEL org.opencontainers.image.title="The Wolf Project"
LABEL org.opencontainers.image.description="Open Tibia Server based on TFS with 10.98 protocol"
LABEL org.opencontainers.image.source="https://github.com/whitecrixu/The-Wolf-Project"
LABEL org.opencontainers.image.licenses="GPL-2.0"

# crypto++-dev is in edge/testing
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
  binutils \
  boost-dev \
  build-base \
  clang \
  cmake \
  crypto++-dev \
  fmt-dev \
  gcc \
  gmp-dev \
  luajit-dev \
  make \
  mariadb-connector-c-dev \
  pugixml-dev

COPY cmake /usr/src/wolf-project/cmake/
COPY src /usr/src/wolf-project/src/
COPY CMakeLists.txt /usr/src/wolf-project/
WORKDIR /usr/src/wolf-project/build
RUN cmake -DCMAKE_BUILD_TYPE=Release .. && make -j$(nproc)

FROM alpine:3.19

LABEL org.opencontainers.image.title="The Wolf Project"
LABEL org.opencontainers.image.description="Open Tibia Server based on TFS with 10.98 protocol"
LABEL org.opencontainers.image.source="https://github.com/whitecrixu/The-Wolf-Project"
LABEL org.opencontainers.image.licenses="GPL-2.0"

# crypto++ is in edge/testing
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
  boost-iostreams \
  boost-system \
  boost-filesystem \
  crypto++ \
  fmt \
  gmp \
  luajit \
  mariadb-connector-c \
  pugixml \
  tzdata \
  netcat-openbsd

# Create non-root user for security
RUN addgroup -g 1000 wolf && \
    adduser -D -u 1000 -G wolf wolf

COPY --from=build /usr/src/wolf-project/build/tfs /bin/tfs
COPY data /srv/data/
COPY LICENSE README.md *.dist *.sql key.pem /srv/

RUN chown -R wolf:wolf /srv

USER wolf

EXPOSE 7171 7172
WORKDIR /srv
VOLUME /srv

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD nc -z localhost 7171 || exit 1

ENTRYPOINT ["/bin/tfs"]

