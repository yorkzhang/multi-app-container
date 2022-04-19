FROM nginx:latest
COPY start.sh /home
RUN chmod 777 /home/start.sh
RUN apt upgrade
RUN apt update
RUN apt install nodejs -y
RUN apt install npm -y
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /home/myapp
COPY app1.js /home/myapp
RUN mkdir -p /home/myapp/myapp1
COPY app2.js /home/myapp/myapp1
WORKDIR /home/myapp
RUN echo y | npm install express
RUN echo y | npm install pm2@latest -g
ENTRYPOINT ["/home/start.sh"]