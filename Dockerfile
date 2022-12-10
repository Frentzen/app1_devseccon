FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Create app directory and copy the application code
RUN mkdir -p /usr/src/app
COPY app.js /usr/src/app

# Install dependencies and set the working directory
RUN cd /usr/src/app && npm i express
WORKDIR /usr/src/app

# Expose port 3000 and start the app
EXPOSE 3000
ENTRYPOINT ["node", "app.js"]
