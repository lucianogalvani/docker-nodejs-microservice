FROM ubuntu:latest
MAINTAINER lgalvani

RUN apt-get update
RUN apt-get install -y nodejs nodejs-legacy npm
RUN apt-get clean

COPY ./package.json src/

RUN cd src && npm install

COPY . src/

#RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR src/

CMD ["npm","start"]
