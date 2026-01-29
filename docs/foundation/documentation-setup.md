# Documentation Setup with MkDocs

!!! abstract "Activity Overview"
    **Duration:** 2-3 hours  
    **Tools:** Python, MkDocs Material, Text Editor  
    **Deliverable:** Functional documentation website

## Objective

Create a professional technical documentation website using MkDocs with the Material theme. This forms the foundation for documenting all fabrication activities throughout the course.

## What You'll Learn

- Installing and configuring MkDocs Material
- Understanding markdown syntax and structure
- Organizing documentation with hierarchical navigation
- Customizing themes and styling
- Running local preview server

---

## Installation

### Prerequisites

Ensure you have Python 3.x installed:

\`\`\`bash
python --version
\`\`\`

### Install MkDocs Material

\`\`\`bash
pip install mkdocs-material
\`\`\`

---

## Creating Your Project

### Initialize MkDocs Project

\`\`\`bash
mkdocs new fabrication-portfolio
cd fabrication-portfolio
\`\`\`

This creates:

\`\`\`
fabrication-portfolio/
├── docs/
│   └── index.md
└── mkdocs.yml
\`\`\`

---

## Configuration

### Basic mkdocs.yml

\`\`\`yaml
site_name: My Fabrication Portfolio
theme:
  name: material
  palette:
    primary: blue
    accent: amber
\`\`\`

### Complete Navigation Structure

\`\`\`yaml
nav:
  - Home: index.md
  - Foundation:
      - foundation/index.md
      - Documentation Setup: foundation/documentation-setup.md
  - Digital Design:
      - design/index.md
  - Electronics:
      - electronics/index.md
  - Manufacturing:
      - manufacturing/index.md
\`\`\`

---

## Running Locally

### Start Development Server

\`\`\`bash
mkdocs serve
\`\`\`

Visit: `http://127.0.0.1:8000`

The server auto-reloads when you save changes.

---

## Project Structure

\`\`\`
docs/
├── index.md                    # Home page
├── foundation/
│   ├── index.md
│   ├── documentation-setup.md
│   └── github-pages.md
├── design/
│   ├── index.md
│   └── freecad-bracket.md
├── electronics/
│   ├── index.md
│   └── attiny45-project.md
├── manufacturing/
│   ├── index.md
│   └── materials.md
├── images/
│   ├── logos/
│   ├── foundation/
│   ├── design/
│   ├── electronics/
│   └── manufacturing/
└── stylesheets/
    └── extra.css
\`\`\`

---

## Activity Tasks

### Task 1: Install MkDocs Material

- [ ] Install Python 3.x
- [ ] Install mkdocs-material package
- [ ] Verify installation with `mkdocs --version`

### Task 2: Create Project

- [ ] Initialize new MkDocs project
- [ ] Create directory structure for all sections
- [ ] Create placeholder index.md files

### Task 3: Configure Theme

- [ ] Set Material theme in mkdocs.yml
- [ ] Configure color palette
- [ ] Set up navigation structure
- [ ] Add custom CSS file

### Task 4: Test Locally

- [ ] Run `mkdocs serve`
- [ ] Verify all pages load correctly
- [ ] Test navigation links
- [ ] Check responsive design

---

## Troubleshooting

### Common Issues

**Problem:** `mkdocs: command not found`  
**Solution:** Ensure Python and pip are in your PATH

**Problem:** Theme not loading  
**Solution:** Verify `theme: name: material` in mkdocs.yml

**Problem:** Images not displaying  
**Solution:** Check relative paths from markdown file location

---

## Best Practices

### Writing Good Documentation

1. **Be Specific** - Include exact steps, not general descriptions
2. **Add Screenshots** - Visual aids clarify complex processes
3. **Explain Why** - Don't just document what, explain rationale
4. **Include Files** - Provide download links for design files
5. **Update Regularly** - Document as you work, not after

### Markdown Tips

\`\`\`markdown
# Heading 1
## Heading 2
### Heading 3

**Bold text**
*Italic text*

- Bullet list item
1. Numbered list item

[Link text](url)
![Image alt](path/to/image.png)

\`\`\`code block\`\`\`
\`\`\`

### Admonitions

!!! note "Note Title"
    Important information highlighted

!!! tip "Pro Tip"
    Helpful suggestions

!!! warning "Warning"
    Things to be careful about

---

## Reflection

After completing this activity, consider:

1. How does structured documentation improve project management?
2. What challenges did you face during setup?
3. How will you organize future project documentation?

---

## Additional Resources

- [MkDocs Documentation](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [Markdown Guide](https://www.markdownguide.org/)

---

*Activity completed on: [DATE]*  
*Time invested: [HOURS]*
