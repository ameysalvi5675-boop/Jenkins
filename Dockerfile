
# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose port 5000 to access the app
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
