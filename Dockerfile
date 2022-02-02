FROM alpine:3.14
RUN apk add --no-cache zsh
RUN apk add --no-cache openssl

COPY cert-str-details.sh /

ENTRYPOINT ["zsh", "/cert-str-details.sh"]