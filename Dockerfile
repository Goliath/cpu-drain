FROM ubuntu:20.04

RUN apt-get update && apt-get install -y apt-utils stress

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh

ENTRYPOINT ["/tmp/run.sh"]
