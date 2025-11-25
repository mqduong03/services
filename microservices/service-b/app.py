from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Hello from Service B"})

@app.route('/health')
def health():
    return jsonify({"status": "healthy", "service": "service-b"})

if __name__ == '__main__':
    print("Service B starting on port 80...")
    app.run(host='0.0.0.0', port=80, debug=False)