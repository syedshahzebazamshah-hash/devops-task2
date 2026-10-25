
FROM alpine:3.22 AS site
WORKDIR /site
COPY index.html .

FROM nginx:alpine
COPY --from=site /site/index.html /usr/share/nginx/html/index.html
EXPOSE 80
