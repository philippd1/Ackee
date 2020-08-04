FROM node:14.5.0-alpine3.12
COPY ./package.json ./
RUN yarn install --production=true
COPY ./ ./
CMD [ "node", "." ]