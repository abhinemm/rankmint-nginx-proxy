# Dockerfile for the Nginx Reverse Proxy
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf