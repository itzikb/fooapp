FROM alpine:latest
EXPOSE 8000
WORKDIR /tmp
RUN echo 'hello' > /tmp/index.html

RUN apk --no-cache -U add python3 && \
    apk upgrade --no-cache -U -a
# Patch OpenSSL vulnerability^

RUN apk --no-cache -U add python3
ENTRYPOINT [ "python3", "-m", "http.server", "8000" ]
