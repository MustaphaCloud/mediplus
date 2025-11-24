# get a base image for docker hub
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

# define working directory(directoiry inside container)
WORKDIR /usr/share/nginx/html

#copy from host to container
COPY . /usr/share/nginx/html

# Expose port 
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
