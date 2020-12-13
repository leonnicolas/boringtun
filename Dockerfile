FROM debian:stable-slim

WORKDIR /app
ARG TARGETPLATFORM
COPY ./${TARGETPLATFORM}/boringtun /boringtun
RUN chmod +x /boringtun
ENV WG_LOG_LEVEL=info \
    WG_THREADS=4

ENTRYPOINT ["/boringtun"]
