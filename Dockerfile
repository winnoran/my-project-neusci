FROM node:18-alpine

#Environment Type
ENV NODE_ENV=production

#Sets working directory of this container
WORKDIR /app

#Install dependecies (dev)
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install 

# Copy website files to the container 
COPY . . 

#Comand to run (when deploying to prod, no need to restart for changes)
CMD ["node", "index.js"]