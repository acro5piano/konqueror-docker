FROM ubuntu:22.10

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt install -y konqueror

RUN apt install -y dbus-x11

RUN useradd -G sudo -u 1000 --create-home konqueror

USER 1000

CMD ["konqueror", "--profile", "default"]
