FROM ubuntu:22.04 AS builder

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libboost-iostreams-dev \
    libboost-system-dev \
    libgmp-dev \
    libluajit-5.1-dev \
    libmysqlclient-dev \
    libpugixml-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src
COPY . .

RUN cmake -B build -DCMAKE_BUILD_TYPE=Release && \
    cmake --build build -j $(nproc)

FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    libboost-iostreams1.74.0 \
    libboost-system1.74.0 \
    libgmp10 \
    libluajit-5.1-2 \
    libmysqlclient21 \
    libpugixml1v5 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY --from=builder /src/build/wolfserver /app/
COPY data /app/data
COPY config.lua.dist /app/config.lua

EXPOSE 7171 7172

CMD ["./wolfserver"]
