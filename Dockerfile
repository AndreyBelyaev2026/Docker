FROM nginx:alpine
WORKDIR /usr/share/nginx/html
ADD index.html .
CMD ["nginx", "-g", "daemon off;"]
