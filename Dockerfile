# 1) Use official Python base image
FROM python:3.11-slim

# 2) Set working directory inside container
WORKDIR / app

# 3) Copy dependency file and install packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4) Copy application code
COPY app ./app

# 5) Run FastAPI using uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
