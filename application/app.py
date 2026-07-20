from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return jsonify({
        "message": "AWS Two-Tier Web Application is Running!",
        "status": "success"
    })


@app.route("/health")
def health():
    return jsonify({
        "health": "OK"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
