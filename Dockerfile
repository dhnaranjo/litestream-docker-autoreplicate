FROM litestream/litestream:latest
COPY run.sh /scripts/run.sh
CMD ["/scripts/run.sh"]
