FROM codercom/code-server:latest

WORKDIR /home/coder/project

# optional: install node
RUN sudo apt update && sudo apt install -y nodejs npm

EXPOSE 8080

CMD ["code-server","--bind-addr","0.0.0.0:8080","--auth","none"]
