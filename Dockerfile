# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port that the Flask app will run on
EXPOSE 8080

# Step 6: Define environment variables (optional)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Step 7: Run the Flask app when the container launches
CMD ["flask", "run"]
