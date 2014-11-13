FROM ubuntu:14.04.1

ENV DEBIAN_FRONTEND noninteractive

COPY bootstrap.sh /tmp/bootstrap.sh
COPY bootstrap_createuser.sh /tmp/bootstrap_createuser.sh
COPY bootstrap_user.sh /tmp/bootstrap_user.sh

RUN /bin/bash /tmp/bootstrap.sh
RUN /bin/bash /tmp/bootstrap_createuser.sh

USER opentee
ENV HOME /home/opentee

RUN /bin/bash /tmp/bootstrap_user.sh
