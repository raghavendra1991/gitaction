FROM nginx:1.23.2
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
