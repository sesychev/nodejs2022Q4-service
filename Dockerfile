FROM node:lts-alpine AS development
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install
COPY . .
# EXPOSE 4000
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]

