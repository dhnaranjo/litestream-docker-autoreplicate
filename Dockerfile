FROM --platform=$BUILDPLATFORM litestream/litestream:latest
COPY run.sh /scripts/run.sh
ENTRYPOINT []
CMD ["sleep", "infinity"]
