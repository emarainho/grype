FROM docker:latest

RUN apk --no-cache add curl --update && \
    curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin

ENTRYPOINT ["grype"]
