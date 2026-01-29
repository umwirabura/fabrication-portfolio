#!/bin/bash

# Foundation section templates
cat > docs/foundation/index.md << 'EOF'
# Foundation: Documentation & Web Development

## Overview

This section covers the fundamental skills for professional technical documentation and version control. These practices are essential for any engineering project, enabling collaboration, reproducibility, and knowledge sharing.

## Learning Objectives

- Set up and configure MkDocs with Material theme
- Implement Git version control workflows
- Deploy static sites using GitHub Pages
- Create clear, structured technical documentation

## Key Activities

### 1. Documentation Setup
Building a professional documentation website using MkDocs Material theme.

[Learn More →](documentation-setup.md){ .md-button .md-button--primary }

### 2. GitHub Pages Deployment
Publishing documentation to the web using GitHub Pages and CI/CD workflows.

[Learn More →](github-pages.md){ .md-button .md-button--primary }

### 3. Version Control Best Practices
Understanding Git workflows, branching strategies, and collaborative development.

[Learn More →](version-control.md){ .md-button .md-button--primary }

## Tools & Technologies

- **MkDocs** - Static site generator
- **Material for MkDocs** - Modern documentation theme
- **Git** - Version control system
- **GitHub** - Code hosting and collaboration platform
- **GitHub Actions** - CI/CD automation

## Why This Matters

Good documentation is not an afterthought—it's an integral part of the design process. For IoT systems, where hardware, software, and firmware interact, clear documentation ensures that designs are reproducible, maintainable, and scalable.
EOF

cat > docs/foundation/documentation-setup.md << 'EOF'
# Documentation Setup with MkDocs

## Objective

Learn to create professional technical documentation using MkDocs with the Material theme, establishing a foundation for documenting all fabrication activities.

## Prerequisites

- Python 3.x installed
- Basic command line knowledge
- Text editor

## Installation Steps

### 1. Install MkDocs Material

```bash
pip install mkdocs-material
```

### 2. Create Project Structure

```bash
mkdocs new fabrication-portfolio
cd fabrication-portfolio
```

### 3. Configure mkdocs.yml

```yaml
site_name: Your Project Name
theme:
  name: material
  palette:
    primary: blue
    accent: amber
```

## Project Structure

```
fabrication-portfolio/
├── docs/
│   ├── index.md
│   ├── foundation/
│   ├── design/
│   ├── electronics/
│   └── manufacturing/
├── mkdocs.yml
└── README.md
```

## Running Locally

```bash
mkdocs serve
```

Visit `http://127.0.0.1:8000` to see your documentation.

## Key Features

- **Search functionality** - Quick content discovery
- **Responsive design** - Works on all devices
- **Syntax highlighting** - Beautiful code blocks
- **Custom styling** - Professional appearance

## Activity Deliverables

- [ ] MkDocs installed and configured
- [ ] Basic site structure created
- [ ] Custom theme applied
- [ ] Local preview working

## Reflection Questions

1. Why is structured documentation important for technical projects?
2. How does MkDocs differ from traditional documentation approaches?
3. What challenges did you encounter during setup?

---

!!! tip "Pro Tip"
    Use markdown preview extensions in your editor to see formatted content before building.
EOF

cat > docs/foundation/github-pages.md << 'EOF'
# GitHub Pages Deployment

## Objective

Publish documentation website using GitHub Pages with automated deployment via GitHub Actions.

## Prerequisites

- Git installed
- GitHub account
- MkDocs project ready

## Deployment Steps

### 1. Create GitHub Repository

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/username/repo.git
git push -u origin main
```

### 2. Configure GitHub Actions

Create `.github/workflows/ci.yml`:

```yaml
name: ci 
on:
  push:
    branches:
      - main
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: 3.x
      - run: pip install mkdocs-material
      - run: mkdocs gh-deploy --force
```

### 3. Enable GitHub Pages

1. Go to repository Settings
2. Navigate to Pages section
3. Select `gh-pages` branch as source
4. Save settings

## URL Structure

Your site will be available at:
```
https://username.github.io/repository-name/
```

## Continuous Deployment

Every push to `main` branch automatically:

1. Triggers GitHub Actions workflow
2. Builds documentation
3. Deploys to `gh-pages` branch
4. Updates live website

## Activity Deliverables

- [ ] Repository created and pushed
- [ ] GitHub Actions configured
- [ ] Site deployed and accessible
- [ ] Automatic deployment verified

## Troubleshooting

**Problem:** Pages not updating  
**Solution:** Check Actions tab for build errors

**Problem:** 404 errors  
**Solution:** Verify repository name in `mkdocs.yml`

---

!!! success "Checkpoint"
    Your documentation is now live and automatically deploys with every update!
EOF

cat > docs/foundation/version-control.md << 'EOF'
# Version Control Best Practices

## Objective

Understand Git workflows, commit strategies, and collaborative development practices for technical documentation.

## Git Fundamentals

### Basic Workflow

```bash
# Check status
git status

# Stage changes
git add filename.md

# Commit with message
git commit -m "Add PCB design documentation"

# Push to remote
git push origin main
```

### Commit Message Guidelines

Good commit messages are:

- **Clear**: Describe what changed
- **Concise**: Keep under 50 characters
- **Present tense**: "Add feature" not "Added feature"

Examples:
```
✅ Add FreeCAD bracket design documentation
✅ Update PCB schematic with power circuit
✅ Fix broken image links in electronics section
❌ Updated stuff
❌ Changes
```

## Branching Strategy

### Feature Branches

```bash
# Create feature branch
git checkout -b feature/pcb-documentation

# Work on feature
# ... make changes ...

# Merge back to main
git checkout main
git merge feature/pcb-documentation
```

### When to Branch

- Adding major new section
- Experimenting with site structure
- Working on collaborative projects

## Documentation Workflow

### Daily Practice

1. **Pull latest** changes: `git pull`
2. **Make changes** to documentation
3. **Stage files**: `git add .`
4. **Commit with message**: `git commit -m "message"`
5. **Push to remote**: `git push`

### Before Each Session

```bash
git pull origin main
```

### After Each Session

```bash
git add .
git commit -m "Document Day X activities"
git push origin main
```

## .gitignore Configuration

```
# MkDocs
site/

# Python
__pycache__/
*.pyc

# System
.DS_Store
Thumbs.db

# Editor
.vscode/
.idea/
```

## Activity Deliverables

- [ ] Local repository configured
- [ ] Remote repository connected
- [ ] .gitignore file created
- [ ] Multiple commits with good messages
- [ ] Changes pushed successfully

## Best Practices Checklist

- [ ] Commit regularly (after each significant change)
- [ ] Write descriptive commit messages
- [ ] Pull before starting work
- [ ] Push at end of each session
- [ ] Don't commit generated files (site/)
- [ ] Keep commits focused on single topic

---

!!! warning "Common Mistake"
    Don't commit the `site/` directory—it's automatically generated during deployment.
EOF

