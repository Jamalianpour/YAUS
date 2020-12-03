FROM registry.vsf-co.ir/library/rust:latest
WORKDIR /usr/src/URLS
COPY . .
RUN cargo fetch
# RUN cargo build --release
ENV PKG_CONFIG_ALLOW_CROSS=1
RUN cargo install --target x86_64-unknown-linux-musl --path .






