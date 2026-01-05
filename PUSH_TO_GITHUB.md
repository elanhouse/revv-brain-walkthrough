# Push to GitHub - Instructions

Your files are committed and ready to push! Follow these steps:

## Option 1: Create New GitHub Repository

1. Go to https://github.com/new
2. Create a new repository (e.g., `revv-brain-sales-demos`)
3. **Don't** initialize with README (we already have one)
4. Copy the repository URL

## Option 2: Use Existing Repository

If you already have a repository, just use its URL.

## Push Commands

Run these commands in the READY DEMO folder:

```powershell
# Add remote (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Alternative: Using SSH

If you prefer SSH:

```powershell
git remote add origin git@github.com:YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

## Enable GitHub Pages

After pushing:

1. Go to your repository on GitHub
2. Click **Settings** > **Pages**
3. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click **Save**
5. Your site will be live at: `https://YOUR_USERNAME.github.io/REPO_NAME/`

## Quick Push Script

Or run this PowerShell script (replace the URL):

```powershell
cd "C:\Users\thema\Documents\BIZ\Radar\Ai Coding\Claude\Revv Brain\Projects\Call Framework\READY DEMO"
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

---

**Current Status:**
✅ Git initialized
✅ Files committed
⏳ Waiting for remote repository URL


