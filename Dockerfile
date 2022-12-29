FROM node:lts-alpine
ENV NODE_ENV=development
WORKDIR /app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --development --silent 
COPY . .
EXPOSE 8080
CMD ["npm", "start"]