@echo off
echo Setting up GigAward Job Platform structure...

REM Root directories
mkdir backend frontend infrastructure scripts docs .github\workflows

REM Backend structure
mkdir backend\app\api\v1\routes backend\app\api\v1\schemas backend\app\core backend\app\db
type nul > backend\app\api\v1\__init__.py
type nul > backend\app\api\v1\routes\user.py
type nul > backend\app\api\v1\schemas\user.py
type nul > backend\app\core\config.py
type nul > backend\app\core\security.py
type nul > backend\app\core\database.py
type nul > backend\app\db\models.py
type nul > backend\app\db\base.py
type nul > backend\app\main.py
type nul > backend\app\dependencies.py
type nul > backend\Dockerfile
type nul > backend\requirements.txt
type nul > backend\.env
type nul > backend\pytest.ini

REM Frontend structure
mkdir frontend\components\layout frontend\pages\api\auth frontend\pages\dashboard frontend\lib frontend\styles frontend\public\assets
type nul > frontend\components\layout\Header.tsx
type nul > frontend\pages\api\auth\[...nextauth].ts
type nul > frontend\pages\_app.tsx
type nul > frontend\pages\index.tsx
type nul > frontend\pages\dashboard\index.tsx
type nul > frontend\lib\api.ts
type nul > frontend\styles\globals.css
type nul > frontend\.env.local
type nul > frontend\next.config.js
type nul > frontend\Dockerfile
type nul > frontend\tsconfig.json
type nul > frontend\package.json

REM Infrastructure setup
type nul > infrastructure\main.bicep
type nul > infrastructure\parameters.dev.json

REM Scripts
type nul > scripts\init-db.sh
type nul > scripts\deploy.sh

REM GitHub Actions CI/CD setup
type nul > .github\workflows\ci-cd.yml

REM Documentation
type nul > docs\architecture.md

REM Root files
type nul > README.md
type nul > .gitignore

echo File structure successfully created!
pause
