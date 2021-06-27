FROM node
RUN npm install -g nodemon
RUN mkdir /test_app
WORKDIR /test_app
COPY app.js /test_app
CMD "nodemon app.js"
