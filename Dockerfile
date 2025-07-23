# Use official lightweight Python image
FROM python:3.11

# Set working directory inside the container
WORKDIR /app

# Copy local files to container
COPY hello.py .

# Install Flask
RUN pip install Flask

# Expose the port your Flask app runs on
EXPOSE 8082

# Run the application
CMD ["python", "hello.py"]
