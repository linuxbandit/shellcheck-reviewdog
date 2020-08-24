ARG SHELLCHECK_VERSION=v0.7.1
FROM koalaman/shellcheck-alpine:${SHELLCHECK_VERSION}

ARG REVIEWDOG_VERSION=v0.9.17

LABEL maintainer="Fabrizio Bellicano <bellicaf@tcd.ie>" \
    image="linuxbandit/shellcheck-reviewdog" \
    repository="https://github.com/linuxbandit/shellcheck-reviewdog" \
    vendor="jobtome" \
    description="Docker image with shellcheck and Review Dog inside." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh \
      && ./install.sh -b /usr/local/bin/ ${REVIEWDOG_VERSION} \
      && rm install.sh