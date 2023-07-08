FROM tiangolo/nginx-rtmp:latest-2023-03-20

RUN apt-get update && apt-get install -y gettext
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
