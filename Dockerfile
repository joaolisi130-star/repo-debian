FROM debian:latest

RUN apt update && apt install -y \
    bash \
    curl

RUN curl -L https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 \
    -o /usr/local/bin/ttyd && chmod +x /usr/local/bin/ttyd

EXPOSE 7681

CMD ["ttyd", "-W", "-t", "fontSize=18", "-p", "7681", "bash"]
