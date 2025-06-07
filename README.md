
# GigAward Job Platform

This repository hosts the GigAward Job Platform, designed to connect certified contractors directly with businesses needing specialized services, streamlining scheduling, invoicing, and communication.

## Tech Stack

- **Backend**: FastAPI (Python)
- **Frontend**: Next.js (React)
- **Database**: Azure-hosted PostgreSQL
- **Authentication**: Azure AD B2C
- **Deployment**: Docker (FastAPI on Azure App Service), Next.js on Vercel
- **Infrastructure**: Azure Bicep
- **CI/CD**: GitHub Actions

## Directory Structure

```
.
├── backend/          # FastAPI backend service
├── frontend/         # Next.js frontend application
├── infrastructure/   # Azure infrastructure definitions (Bicep)
├── scripts/          # Utility scripts for database and deployment tasks
├── .github/workflows # GitHub Actions workflows
```

## Local Development Setup

### Prerequisites

- Docker & Docker Compose
- Node.js (18.x recommended)
- Python (3.11 recommended)
- Azure CLI
- Git

### Backend Setup

Navigate to the backend directory and set up:

```bash
cd backend
python -m venv env
source env/bin/activate  # (Linux/macOS) or env\Scriptsctivate (Windows)
pip install -r requirements.txt
docker build -t gigaward-backend .
docker run -p 8000:8000 gigaward-backend
```

### Frontend Setup

Navigate to the frontend directory and set up:

```bash
cd frontend
npm install
npm run dev
```

### Infrastructure Setup

Use Azure CLI to deploy infrastructure with Bicep scripts:

```bash
az deployment group create --resource-group your-resource-group --template-file infrastructure/main.bicep --parameters infrastructure/parameters.dev.json
```

## CI/CD

Automated workflows are defined in `.github/workflows`. Pushes to `main` branch deploy automatically to the configured environments.

## Contributing

- Branch off from `main` for feature development.
- Submit pull requests with clear titles and descriptions.
- Write tests for new backend features (pytest) and ensure frontend changes pass linting.
