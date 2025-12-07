![CI](https://github.com/Yukifujioka-hub/devops-free-project/actions/workflows/ci.yml/badge.svg)

# DevOps Free Project — Flask + Docker + GitHub Actions

A minimal DevOps demo project showcasing CI automation, containerization, and unit testing using a simple Flask API.
Designed to demonstrate practical DevOps fundamentals in a clean, production-style structure.

---

## Features
- Flask API — small web endpoint for testing container behavior
- Dockerized environment — reproducible runtime with dependencies included
- Pytest unit tests — verifies application logic
- GitHub Actions CI — automated testing, Docker build, and container health-check
- Lightweight, easy-to-read structure suited for reviewing DevOps skills

---

## 📁 Project Structure
```
devops-free-project/
├── app/
│   └── app.py            # Flask application
├── tests/
│   └── test_app.py       # Pytest unit tests
├── Dockerfile            # Build & run the app in Docker
├── requirements.txt
└── .github/
    └── workflows/
        └── ci.yml        # GitHub Actions CI pipeline
```

---

## CI Pipeline Overview
GitHub Actions workflow (`ci.yml`) automatically:

1. Checks out code  
2. Installs dependencies  
3. Runs unit tests (`pytest`)  
4. Builds Docker image  
5. Starts the container  
6. Performs a health-check to verify the app responds correctly

This simulates a basic but realistic CI flow.
---

## Run Locally

```bash
git clone https://github.com/Yukifujioka-hub/devops-free-project.git
cd devops-free-project