# Operational System version
FROM debian:latest

# Upgrade packages and install nginx web server
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y

# Listens 8080 port at runtime
EXPOSE 8080

# Runs nginx not on background
CMD ["nginx", "-g", "daemon off;"]
