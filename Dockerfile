#taking the python image from dockerhub
FROM python:3.11.10-alpine3.19

#Set the working directory for the container
WORKDIR /usr/src/app

# Copy the requirements file into the container
COPY requirements.txt /usr/src/app/requirements.txt

# Install the dependencies 
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container 
COPY . .

# Define the command to run the application 
CMD ["python", "app.py"]
