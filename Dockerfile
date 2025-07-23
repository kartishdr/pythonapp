# Use the official Python 3.11 image
FROM python:3.11

# Set working directory inside the container
WORKDIR /app

# Copy application file into the container
COPY hello.py .

# Install Flask with pip using reduced resource usage
RUN pip install --no-cache-dir --progress-bar off Flask

# Set the default command to run the Flask app
CMD ["python", "hello.py"]



