# Use the Python 3.9 Slim image as the base for the container image
FROM python:3.9-slim

# Set the working directory inside the container to /.app
WORKDIR /app 

# Copy all files from the current directory to the working directory in the container
COPY . .

# Install the dependencies listed in the requirements.txt file
# Install the Migration of your Server 
RUN pip install -r requirements.txt
RUN python manage.py migrate

# Expose port 8000 to make the application accessible
EXPOSE 8000

ENTRYPOINT [ "entrypoint.sh" ]