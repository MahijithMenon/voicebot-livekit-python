# Use official Python image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose any needed port (optional)
EXPOSE 8000

RUN python app.py download-files

# Default command to run the app
CMD ["python", "app.py", "start"]
