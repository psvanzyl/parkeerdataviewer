FROM node:20-alpine
WORKDIR /app
COPY webapp/package*.json ./
RUN npm ci
COPY webapp/ .
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]
