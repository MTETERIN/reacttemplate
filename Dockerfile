FROM node:14.4.0-alpine3.10
USER root
WORKDIR /frontend
COPY . /frontend
ARG API_URL
ENV REACT_APP_HOST_IP_ADDRESS=http://192.168.10.122:8080
RUN yarn
RUN yarn build