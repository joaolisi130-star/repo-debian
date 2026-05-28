FROM debian:latest

RUN apt update && apt install -y bash ttyd

CMD ["ttyd", "-p", "7681", "bash"]
