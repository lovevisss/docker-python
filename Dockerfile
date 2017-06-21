#use an official python runtime as a base image
FROM python:2.7-slim

#set the working directory to /app
WORKDIR /app

#copy the current directory contents into the container at /app

ADD . /app

#install any needed packages specified int requirements.txt
RUN pip install -r requirements.txt

#make port 80 available to the world outside this container
EXPOSE 80

#Define environment variable
ENV NAME World

#run app.py when the container launches
CMD ["python", "app.py"]
