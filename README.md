# DevOps Monitoring Stack with Minikube

This project implements a full-stack monitoring solution on a local **Kubernetes (Minikube)** cluster. It includes:

- **Prometheus** for metrics collection  
- **Grafana** for visualization  
- **Alertmanager** for alert handling  
- **Custom Python Exporter** to expose app-specific metrics  

---

## 🗂️ Project Structure

```
devops-monitoring-project/
├── grafana/
│   └── datasources/
│   └── dashboards/
│   └── deployment.yaml
│   └── service.yaml
├── prometheus/
│   └── prometheus.yml
│   └── alert.rules.yml
│   └── deployment.yaml
│   └── service.yaml
├── alertmanager/
│   └── config.yml
│   └── deployment.yaml
│   └── service.yaml
├── python-exporter/
│   └── app.py
│   └── Dockerfile
│   └── requirements.txt
├── namespaces/
│   └── monitoring-namespace.yaml
├── scripts/
│   └── deploy.sh
├── README.md
└── .gitignore
```

---

## 🛠️ Technologies Used

| Tool             | Purpose                                |
|------------------|----------------------------------------|
| **Minikube**     | Local Kubernetes cluster               |
| **Docker**       | Containerization for the Python app    |
| **Prometheus**   | Monitoring & scraping metrics          |
| **Grafana**      | Visualizing Prometheus metrics         |
| **Alertmanager** | Sending alerts based on rule matches   |
| **Python**       | Custom metrics exporter                |
| **Kubernetes**   | Orchestrating all components           |
| **Bash Scripts** | Easy deployment & automation           |

---

## 🚀 Getting Started

1. **Start Minikube:**

```bash
minikube start
```

2. **Deploy Monitoring Stack:**

```bash
bash scripts/deploy.sh
```

3. **Access Services:**

```bash
minikube service grafana-service
minikube service prometheus-service
```

---

## 📈 Custom Python Exporter

The Python app exposes metrics at `/metrics` (using Flask + Prometheus client). These metrics are scraped by Prometheus.

Sample metric:

```
my_custom_metric{label="value"} 123
```

---

## ⚠️ Alerts

Alertmanager is configured to send basic alerts (e.g., service down, high usage) using the rules in `prometheus/alert.rules.yml`.

You can configure email, Slack, or webhook integrations in `alertmanager/config.yml`.

---

## 📊 Dashboards

Grafana dashboards are automatically provisioned from the `grafana/dashboards` folder and connected to Prometheus via the `grafana/datasources` configuration.

---

## 🧹 Tear Down

To stop and delete everything:

```bash
minikube delete
```

---

## 📄 License

This project is open-source and available under the MIT License.
