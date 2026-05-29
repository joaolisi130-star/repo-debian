FROM debian:latest

RUN apt update && apt install -y \
    bash \
    curl \
    neofetch

RUN curl -fsSL https://github.com/tsl0922/ttyd/releases/latest/download/ttyd_linux.x86_64 \
    -o /usr/local/bin/ttyd && chmod +x /usr/local/bin/ttyd

EXPOSE 7681

CMD bash -c "echo 'neofetch' >> /root/.bashrc && ttyd -W -t fontSize=18 -p 7681 bash"
