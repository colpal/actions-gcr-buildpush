FROM google/cloud-sdk:303.0.0-alpine

LABEL name="gcr-buildpush"
LABEL version="1.0.0"
LABEL com.github.actions.name="GCR Build and Push"
LABEL com.github.actions.description="GitHub action with to build a docker container and push it to GCR"
LABEL com.github.actions.color="blue"
LABEL com.github.actions.icon="cloud"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]