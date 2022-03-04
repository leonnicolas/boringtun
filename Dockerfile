FROM debian:stable-slim

WORKDIR /app
ARG TARGETPLATFORM
COPY ./${TARGETPLATFORM}/boringtun-cli /boringtun-cli
RUN chmod +x /boringtun-cli
ENV WG_LOG_LEVEL=info \
    WG_THREADS=4

ENTRYPOINT ["/boringtun-cli"]
