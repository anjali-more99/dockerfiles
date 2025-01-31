FROM ubuntu:latest
# set the working directory for the image 
WORKDIR /app
#copy the files from host filesystem to image filesystem 
COPY . /app
# installing the packages
RUN apt-get update -y && apt-get install -y python3 python3-pip

# setting environmet variables
ENV NAME world
# running a command to start the application 
CMD ["python3", "app.py"]


