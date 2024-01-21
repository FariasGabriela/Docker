FROM nginx:latest

#WORKDIR /app

RUN apt-get update && \
    apt-get install vim -y

COPY html /usr/share/nginx/html


# FROM ubuntu:latest

# ENTRYPOINT ["echo", "Oi Gabriela"]

# CMD ["Funcionou!"]


# FROM nginx:latest

# COPY html /usr/share/nginx/html

# ENTRYPOINT ["/docker-entrypoint.sh"]

# CMD ["nginx", "-g", "daemon off;"]

