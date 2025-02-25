# Use the official Python runtime as the base image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy requirements.txt first (for better caching)
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the Flask app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]