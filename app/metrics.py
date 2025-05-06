# metrics.py
from flask import Flask
from prometheus_client import start_http_server, Counter
import random
import time

# Initialize the Flask application
app = Flask(__name__)

# Define a Prometheus Counter metric
REQUEST_COUNT = Counter('app_requests_total', 'Total number of requests to the app')

@app.route('/')
def home():
    REQUEST_COUNT.inc()  # Increment the request counter each time the endpoint is hit
    return "Hello from monitored app!"  # Basic response to show the app is running

if __name__ == '__main__':
    start_http_server(8000)  # Prometheus scrapes metrics from this port
    app.run(host='0.0.0.0', port=5000)  # Run Flask app on port 5000
