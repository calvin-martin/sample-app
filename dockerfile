FROM node:20-alpine3.17 AS build
COPY . .
RUN npm ci
FROM build AS development
RUN apk update \
    && apk add git
CMD ["npm", "run", "dev"]
