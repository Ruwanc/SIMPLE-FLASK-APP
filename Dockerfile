# Use the official Python image from the Docker Hub
FROM python:alpine3.21

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Install waitress
RUN pip3 install waitress

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
#CMD ["python", "app.py"]
CMD ["waitress-server", "--host 127.0.0.1", "--call", "book:app"]
