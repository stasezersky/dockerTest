# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM alpine

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm git

RUN git clone https://github.com/nigelpoulton/psweb.git
# Copy app to /src
# COPY . /src

# WORKDIR /src

# Install dependencies\
WORKDIR /psweb

RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
