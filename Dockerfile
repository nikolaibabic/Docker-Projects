FROM node
#All should be imported by the image node
WORKDIR /app
#Everything should be running in the folder "app"
COPY . /app
#All files, folders and sub-folders should be copied in the "app"-folder
RUN npm install 
#This command install all the dependencies in the folder "app"
EXPOSE 80
#Tells Docker, to build an exposure to the Port 80
CMD ["node", "server.js"]
#Runs the node server.js, when the container starts