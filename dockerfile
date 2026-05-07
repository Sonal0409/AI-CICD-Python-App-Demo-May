# Create optimized Dockerfile for Flask app
# - python:3.9-slim
# no multiple stages, just one stage
# - cache dependencies using requirements.txt
# - non-root user
# - expose 5000
# - CMD python app.py
# Stage 1: Build stage
FROM python:3.9-slim
WORKDIR /app    
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]

