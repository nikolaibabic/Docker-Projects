FROM node
#All should be imported by the image node
WORKDIR /app
#Everything should be running in the folder "app"
COPY package.json /app
#Only the "package.json" should be copied to the app-folder, to be more efficient
RUN npm install 
#This command install all the dependencies in the folder "app", it must be after "package.json"
#Because it is directed to it
COPY . /app
#Now the other files can be copied
#They are changed more often and in this order it is more efficient
EXPOSE 80
#Tells Docker, to build an exposure to the Port 80
CMD ["node", "server.js"]
#Runs the node server.js, when the container starts