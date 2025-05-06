# Use an official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the necessary ports (Flask and Prometheus)
EXPOSE 5000 
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]
