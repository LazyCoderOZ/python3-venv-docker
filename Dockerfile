FROM ubuntu:24.10
RUN mkdir /root/python-venv
RUN apt update && apt install -y python3 nano python3-dev python3-venv
RUN python3 -m venv /root/python-venv
WORKDIR /root/python-venv
COPY ./.bashrc /root/.bashrc
CMD ["/bin/bash -i"]
