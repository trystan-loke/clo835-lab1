# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# Uncomment the following lines if you have a requirements.txt file

RUN pip install --no-cache-dir flask

# Make port 80 available to the world outside this container
EXPOSE 8080

ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
