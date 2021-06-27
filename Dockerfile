FROM nginx:alpine
COPY cut2thechase.html /usr/share/nginx/html
CMD "ls /usr/share/nginx/html"