## Electric Motor Temperature Prediction (Lite, Containerized) [ML-OPS]

This project provides a containerized ML-powered web application to predict Permanent Magnet (PM) temperature in electric motors.
It’s a lightweight version optimized for deployment, scalability, and fast evaluation.

<img width="1905" height="972" alt="Screenshot 2025-08-28 230539" src="https://github.com/user-attachments/assets/5eb6729c-34da-41f2-9c91-a536a163200e" />🔥 

<img width="1905" height="972" alt="Screenshot 2025-08-28 230539" src="https://github.com/user-attachments/assets/188995b6-4c29-47ff-b727-04591823fb9b" />





⚙️ Tech Stack

Python 3.10+

Flask → REST API + Web UI

Gunicorn → Production-ready WSGI server

Scikit-learn + Joblib → Model training + serialization

Docker (Multi-stage build + Distroless runtime)

(Optional next steps: Docker Compose, CI/CD pipelines, Kubernetes)

🧠 Problem Context

Monitoring motor PM temperature helps with:

Preventing overheating 🚨

Improving efficiency ⚡

Extending motor lifetime 🔧

This service exposes a prediction API + UI form to make live inferences.

📊 Model Features
| Feature         | Description                     |
| --------------- | ------------------------------- |
| u\_q            | Voltage component (q-axis)      |
| coolant         | Coolant temperature (°C)        |
| stator\_winding | Stator winding temperature (°C) |
| u\_d            | Voltage component (d-axis)      |
| stator\_tooth   | Stator tooth temperature (°C)   |
| motor\_speed    | Motor speed (rpm)               |
| i\_d            | Current in d-axis               |
| i\_q            | Current in q-axis               |
| stator\_yoke    | Stator yoke temperature (°C)    |
| ambient         | Ambient temperature (°C)        |
| torque          | Motor torque (Nm)               |


✅ Output → pm (Permanent Magnet temperature, °C)

🏗️ Project Layout
ElectricMotorTempPrediction_Lite/
├── app.py                   # Flask + Gunicorn app
├── model/model.save         # Pre-trained Random Forest model
├── templates/               # Frontend (Jinja2 templates)
├── static/css/style.css     # UI styling
├── notebook/                # EDA + training (not required at runtime)
├── data_small.csv           # Subset dataset (10k rows)
├── requirements.txt         # Python dependencies
├── Dockerfile               # (Containerized)
└── README.md                # This file

🔹 Dockerized

1. ON your Browser search: Docker install 
2. Add user to docker group
   sudo usermod -aG docker ubuntu
3. newgrp docker
   
Build image:
docker build -t motor-temp-predictor .

## Expose port 8000 on ec2 server

Run container:
docker run -d -p 8000:8000 motor-temp-predictor
http://<ec2-ip>:8000

<img width="1482" height="369" alt="Screenshot 2025-08-28 233744" src="https://github.com/user-attachments/assets/8f38df1f-9906-4cce-87b0-c5fcd22c8a59" />

<img width="1912" height="955" alt="Screenshot 2025-08-28 230442" src="https://github.com/user-attachments/assets/d98cb1ff-581b-45ed-8685-adfa9a9b2c79" />

<img width="1663" height="882" alt="Screenshot 2025-08-28 230501" src="https://github.com/user-attachments/assets/049ca99a-e4fe-4d7d-a6d3-1076fd88af9d" />


✍️ Author
👤 Suyash Dahitule
DevOps Engineer in progress 🚀
