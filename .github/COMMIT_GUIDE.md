# Commit Style Guide

This project follows a simplified Conventional Commits format to ensure clean, readable commit history and support automation.

## ✅ Format

```
<type>(optional-scope): <summary>

<detailed body if needed>

Refs: #issue-number
```

## 🔹 Types

| Type      | Description                                                  |
|-----------|--------------------------------------------------------------|
| `feat`    | New feature or user-facing enhancement                       |
| `fix`     | Bug fix                                                      |
| `chore`   | Maintenance tasks (dependencies, configs)                    |
| `docs`    | Documentation-only changes                                   |
| `refactor`| Code change without new features or bug fixes                |
| `test`    | Adding or updating tests                                     |
| `style`   | Formatting changes (no logic changes)                        |
| `ci`      | Changes to CI/CD, GitHub Actions, etc.                       |
| `deploy`  | Deployment-related changes                                   |

## 🔹 Scopes

Optional, to clarify the part of the app affected. Common scopes:
- `frontend`
- `backend`
- `auth`
- `infra`
- `invoice`
- `scheduler`

## 🔹 Examples

```
feat(auth): support Azure B2C token refresh

Implements middleware to automatically refresh expired tokens via MSAL.

Refs: #34
```

```
fix(backend): prevent duplicate invoice line items

Adds constraint and check to avoid duplicates in invoice summary.

Refs: #76
```

```
docs: add README section for project setup
```

```
chore: update pre-commit hook versions
```

## 🛠 Tools (Optional)
- `commitlint` – enforce commit format via linting
- `standard-version`, `release-please` – auto-generate changelogs
