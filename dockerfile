# 1. Use an official Node.js image as the base image
FROM node:18

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# 4. Install the dependencies
RUN npm install

# 5. Copy the rest of the application code to the working directory
COPY . .

# 6. Expose the port that your Node.js app runs on
EXPOSE 3000

# 7. Start the Node.js app
CMD [ "npm", "start" ]
