import os
from flask import Flask, jsonify

app = Flask(__name__)

APP_ENV = os.getenv("APP_ENV", "dev")


@app.get("/")
def home():
    return jsonify(
        message="Hello from the multi-environment RCE-45 Python app",
        repo="aws-terraform-infrastructure",
        owner="titoiunit",
        task="RCE-45",
        environment=APP_ENV
    )


@app.get("/health")
def health():
    return jsonify(
        status="ok",
        environment=APP_ENV
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
