# 1. Specify the base image
FROM node:14

# 2. Create and set the working directory
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application files
COPY . .

# 6. Expose the application port
EXPOSE 3000

# 7. Define the command to run the application
CMD ["node", "app.js"]
