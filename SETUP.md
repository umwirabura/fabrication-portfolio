# Setup Guide

Complete instructions for setting up your fabrication portfolio documentation.

## Prerequisites Installation

### 1. Install Python

**Windows:**
- Download from [python.org](https://www.python.org/downloads/)
- During installation, check "Add Python to PATH"
- Verify: Open Command Prompt and run `python --version`

**macOS:**
```bash
# Using Homebrew
brew install python3
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install python3 python3-pip
```

### 2. Install Git

**Windows:**
- Download from [git-scm.com](https://git-scm.com/download/win)
- Use default settings during installation

**macOS:**
```bash
brew install git
```

**Linux:**
```bash
sudo apt install git
```

### 3. Configure Git

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

## Project Setup

### Step 1: Download the Project

#### Option A: Clone this repository (if already on GitHub)
```bash
git clone https://github.com/YOUR-USERNAME/fabrication-portfolio.git
cd fabrication-portfolio
```

#### Option B: Use the provided files
1. Extract the portfolio folder
2. Open terminal/command prompt in that folder

### Step 2: Install MkDocs Material

```bash
pip install mkdocs-material
```

Verify installation:
```bash
mkdocs --version
```

You should see something like: `mkdocs, version 1.5.x`

### Step 3: Test Locally

```bash
mkdocs serve
```

Open your browser to: `http://127.0.0.1:8000`

You should see your portfolio homepage with the hero section, logos, and navigation.

---

## GitHub Setup

### Step 1: Create GitHub Account

1. Go to [github.com](https://github.com)
2. Sign up for a free account
3. Verify your email address

### Step 2: Create New Repository

1. Click the `+` icon in top right → "New repository"
2. Repository name: `fabrication-portfolio`
3. Description: "Digital Fabrication Portfolio for UR-ACEIoT Course"
4. Keep it **Public** (required for free GitHub Pages)
5. Do **NOT** initialize with README (we already have one)
6. Click "Create repository"

### Step 3: Push Your Project

In your project folder, run:

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# First commit
git commit -m "Initial commit: Portfolio structure and templates"

# Add remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/fabrication-portfolio.git

# Push to GitHub
git push -u origin main
```

**If you get an error about branch names:**
```bash
git branch -M main
git push -u origin main
```

### Step 4: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (left sidebar)
4. Under "Build and deployment":
   - Source: **GitHub Actions**
5. The site will build automatically

**Wait 2-3 minutes** for the first deployment.

Your site will be available at:
```
https://YOUR-USERNAME.github.io/fabrication-portfolio/
```

---

## Customization

### Update Repository Links

1. Open `mkdocs.yml`
2. Find these lines:
   ```yaml
   repo_name: fabrication-portfolio
   repo_url: https://github.com/your-username/fabrication-portfolio
   ```
3. Replace `your-username` with your actual GitHub username

4. Open `README.md`
5. Update the "Live Documentation" URL with your actual URL

### Update Site URL

In `mkdocs.yml`:
```yaml
site_url: https://YOUR-USERNAME.github.io/fabrication-portfolio/
```

---

## Daily Workflow

### Before Starting Work

```bash
# Get latest changes (if working on multiple devices)
git pull origin main
```

### While Working

1. Edit markdown files in `docs/` folder
2. Add images to appropriate `docs/images/section/` folder
3. Save your work
4. Check locally: `mkdocs serve`

### After Completing Work

```bash
# See what changed
git status

# Add all changes
git add .

# Commit with descriptive message
git commit -m "Add Day 2 FreeCAD bracket documentation"

# Push to GitHub (triggers automatic deployment)
git push origin main
```

**Your site will update automatically in 1-2 minutes!**

---

## Adding New Content

### Creating New Pages

1. Create markdown file in appropriate folder:
   ```
   docs/design/new-project.md
   ```

2. Add to navigation in `mkdocs.yml`:
   ```yaml
   - Digital Design:
       - design/index.md
       - New Project: design/new-project.md
   ```

3. Commit and push

### Adding Images

1. Save image to appropriate folder:
   ```
   docs/images/design/bracket-sketch.png
   ```

2. Reference in markdown:
   ```markdown
   ![Bracket Sketch](../images/design/bracket-sketch.png)
   ```

3. Add caption if needed:
   ```markdown
   *Figure 1: Initial bracket design sketch*
   ```

### Adding Downloadable Files

1. Place file in:
   ```
   docs/files/design/bracket.FCStd
   ```

2. Add download link:
   ```markdown
   [Download FreeCAD File](../files/design/bracket.FCStd){ .md-button }
   ```

---

## Troubleshooting

### "mkdocs: command not found"

**Solution:** Python Scripts folder not in PATH
- Windows: Add `C:\Users\YourName\AppData\Local\Programs\Python\Python3x\Scripts` to PATH
- Mac/Linux: Add `~/.local/bin` to PATH

### Site Not Updating

1. Check GitHub Actions tab for build errors
2. Verify workflow file exists: `.github/workflows/ci.yml`
3. Make sure you pushed to `main` branch
4. Clear browser cache (Ctrl+F5)

### Images Not Showing

- Check relative path from markdown file to image
- From `docs/design/project.md`, use: `../images/design/image.png`
- Verify image file exists in correct location

### Local Server Won't Start

1. Check for port conflicts (kill other mkdocs instances)
2. Try different port: `mkdocs serve -a localhost:8001`
3. Check `mkdocs.yml` for syntax errors

---

## Tips for Success

### Documentation Best Practices

1. **Document as you work** - Don't wait until projects are complete
2. **Take screenshots** - Capture every significant step
3. **Explain decisions** - Why did you choose this approach?
4. **Include mistakes** - Failed attempts are learning opportunities
5. **Update regularly** - Commit after each work session

### Commit Message Guide

Good examples:
```
✅ Add PCB schematic for ATtiny45 board
✅ Update FreeCAD bracket with fillet edges
✅ Document laser cutting parameters
✅ Fix broken image links in electronics section
```

Bad examples:
```
❌ Update
❌ Changes
❌ Fix stuff
❌ asdf
```

### Organization Tips

- Use descriptive filenames: `day2-bracket-assembly.png` not `IMG_1234.jpg`
- Keep related files together
- Maintain consistent naming conventions
- Document file formats and versions

---

## Need Help?

### Common Resources

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [GitHub Pages Docs](https://docs.github.com/en/pages)

### Course Support

- Consult with FabLab Rwanda instructors
- Collaborate with fellow students
- Check course materials and examples

---

## Checklist

Use this checklist to verify your setup:

- [ ] Python installed and working
- [ ] Git installed and configured
- [ ] MkDocs Material installed
- [ ] Project runs locally (`mkdocs serve`)
- [ ] GitHub account created
- [ ] Repository created on GitHub
- [ ] Code pushed to GitHub
- [ ] GitHub Pages enabled
- [ ] Site accessible at GitHub Pages URL
- [ ] Automatic deployment working
- [ ] Repository links updated in config
- [ ] README updated with your information

---

**Congratulations!** Your documentation portfolio is now set up and ready for content. Start documenting your fabrication journey! 🚀
