![CI](https://https://github.com/Yukifujioka-hub/devops-free-project/actions/workflows/ci.yml/badge.svg)

# DevOps Free Project — Flask + Docker + GitHub Actions (CI)

## Summary
A minimal Flask API, containerized with Docker, with automated unit tests (pytest) and CI pipeline in GitHub Actions. This project demonstrates:
- Containerization (Docker)
- Automated testing (pytest)
- CI workflow (GitHub Actions)
- Local testing & container health-check

## What I built
- Flask app: `app/app.py` (simple HTTP JSON/text response)
- Tests: `tests/test_app.py` (pytest)
- Dockerfile: builds an image that contains app and test dependencies
- CI: `.github/workflows/ci.yml` runs pytest, builds docker image, starts container and health-checks

## How to run locally
1. Clone
   ```bash
   git clone https://github.com/Yukifujioka-hub/devops-free-project.git
   cd devops-free-project