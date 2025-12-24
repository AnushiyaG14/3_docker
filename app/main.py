import os
from fastapi import FastAPI

app = FastAPI()

APP_NAME = os.getenv("APP_NAME", "FastAPI App")

@app.get("/health")
def health():
    return {
        "status": "success",
        "app": APP_NAME
    }
