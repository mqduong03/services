from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Hello from Service A"})

@app.route('/health')
def health():
    return jsonify({"status": "healthy", "service": "service-a"})

if __name__ == '__main__':
    print("Service A starting on port 8080...")
    app.run(host='0.0.0.0', port=8080, debug=False)
