# Step 1: Set up the computational environment

# Set the base image
FROM ubuntu

# Install packages needed to run the project
RUN apt-get update 
RUN apt-get install sudo
RUN sudo apt-get update 
RUN sudo apt-get install -y python3.7
RUN sudo apt-get install -y python3-pip
RUN pip3 install numpy
RUN pip3 install pytest

#-----------------------

# Step 2: Include the project files in the image
RUN mkdir project

# Copy files from the machine building the image into the image
COPY *.py project/

WORKDIR project
