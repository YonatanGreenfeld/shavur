ARG ENTRYPOINT_TAG_NAME=main
# FROM ghcr.io/jitsecurity-controls/jit-control-entrypoint-alpine:${ENTRYPOINT_TAG_NAME} AS entrypoint-tag
FROM jitentrypoint:offline-alpine AS entrypoint-tag


FROM aquasec/trivy:0.24.2

ENV CONTROL_NAME=trivy

RUN apk update
RUN apk add jq

COPY --from=entrypoint-tag /entrypoint /opt/entrypoint
COPY ./plugins/mapping.yml /opt/plugins/mapping.yml

COPY ./scripts/run-trivy.sh /opt/run-trivy.sh
RUN chmod +x /opt/run-trivy.sh



WORKDIR /code
ENTRYPOINT ["/opt/entrypoint", "/opt/run-trivy.sh"]

# 