# Use full Python base image to avoid threading errors
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy your app
COPY hello.py .

# Install Flask without rich progress bar to avoid threading issues
RUN PIP_NO_PROGRESS_BAR=off pip install Flask

# Expose Flask port
EXPOSE 8082

# Run the app
CMD ["python", "hello.py"]


