FROM google/cloud-sdk:alpine

LABEL name="gcr-buildpush"
LABEL version="1.0.0"
LABEL com.github.actions.name="GCR Build and Push"
LABEL com.github.actions.description="GitHub action with to build a docker container and push it to GCR"
LABEL com.github.actions.color="blue"
LABEL com.github.actions.icon="cloud"

USER 0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER 1000

ENTRYPOINT ["/entrypoint.sh"]