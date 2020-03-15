# Defining the base image
FROM python:stretch

# Copying the contents of the repo into the container's working directory
COPY . ./app

# Setting the working directory
WORKDIR /app

# Upgrading pip and installing necessary Python libaries
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Setting an entrypoint for the container
ENTRYPOINT ["gunicorn", "--bind", ":8080", "main:APP"]
