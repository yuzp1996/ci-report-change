FROM alpine:3.4
ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]