from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "✅ Hello from port 8082!"

if __name__ == "__main__":
    print("🚀 Starting Flask on port 8082...")
    app.run(host="0.0.0.0", port=8082)
