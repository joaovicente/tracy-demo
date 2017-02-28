FROM node:argon
MAINTAINER Joao Vicente <joao.diogo.vicente@gmail.com>

# Create app directory
RUN mkdir -p /usr/src/tracy-ui
WORKDIR /usr/src/tracy-ui

# Bundle app source
ENV TUI_VERSION 0.4.0
ADD https://github.com/joaovicente/tracy-ui/archive/v$TUI_VERSION.tar.gz /usr/src/tracy-ui
RUN tar -xvzf v$TUI_VERSION.tar.gz
RUN rm -rf tracy-ui-$TUI_VERSION/e2e-tests
RUN mv tracy-ui-$TUI_VERSION/* ./
RUN rm -rf tracy-ui-$TUI_VERSION v$TUI_VERSION.tar.gz

# Install app dependencies
RUN npm install -g bower
RUN bower --allow-root install
RUN npm install
RUN mv bower_components ./app/

EXPOSE 8000
CMD [ "npm", "start" ]
