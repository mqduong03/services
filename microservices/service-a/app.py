from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/health')
def health():
    return jsonify({"status": "healthy", "service": "service-a"})

@app.route('/')
def home():
    return jsonify({"message": "Hello from Service A"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
