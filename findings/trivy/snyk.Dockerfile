# Default value for entrypoint tag name is main
ARG ENTRYPOINT_TAG_NAME=main
FROM ghcr.io/jitsecurity-controls/jit-control-entrypoint-alpine:${ENTRYPOINT_TAG_NAME} AS entrypoint-tag

FROM vanilla-snyk-code

ENV CONTROL_NAME=snyk

COPY --from=entrypoint-tag /entrypoint /opt/entrypoint
COPY ./plugins/mapping.yml /opt/plugins/mapping.yml

RUN git config --global --add safe.directory /code
RUN git config --list
WORKDIR /code
ENTRYPOINT ["/opt/entrypoint", "snyk"]
