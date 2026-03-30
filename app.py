from flask import Flask, jsonify

app = Flask(__name__)


@app.get("/")
def home():
    return jsonify(
        message="Hello from the RCE-44 Python app",
        repo="aws-terraform-infrastructure",
        owner="titoiunit",
        task="RCE-44"
    )


@app.get("/health")
def health():
    return jsonify(status="ok")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
