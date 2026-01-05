# Push to GitHub Script
# Run this after authenticating with GitHub CLI or creating the repo manually

Write-Host "🚀 Pushing Revv Brain Walkthrough to GitHub..." -ForegroundColor Green

# Check if authenticated
$authStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "`n⚠️  GitHub CLI not authenticated. Choose an option:" -ForegroundColor Yellow
    Write-Host "`nOption 1: Authenticate with GitHub CLI" -ForegroundColor Cyan
    Write-Host "   Run: gh auth login" -ForegroundColor White
    Write-Host "   Then run this script again" -ForegroundColor White
    
    Write-Host "`nOption 2: Create repo manually on GitHub" -ForegroundColor Cyan
    Write-Host "   1. Go to: https://github.com/new" -ForegroundColor White
    Write-Host "   2. Repository name: revv-brain-walkthrough" -ForegroundColor White
    Write-Host "   3. Make it Public" -ForegroundColor White
    Write-Host "   4. DON'T initialize with README" -ForegroundColor White
    Write-Host "   5. Click 'Create repository'" -ForegroundColor White
    Write-Host "   6. Then run this script again" -ForegroundColor White
    
    exit
}

# Try to create repo if it doesn't exist
Write-Host "`n📦 Creating repository 'revv-brain-walkthrough'..." -ForegroundColor Cyan
gh repo create "revv-brain-walkthrough" --public --source=. --remote=origin --description="Sales demo walkthrough website for Revv Brain storage portfolio analysis" 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Repository created successfully!" -ForegroundColor Green
} else {
    # Repository might already exist, try to add remote
    Write-Host "⚠️  Repository might already exist, checking remote..." -ForegroundColor Yellow
    $remoteExists = git remote get-url origin 2>&1
    if ($LASTEXITCODE -ne 0) {
        # Get GitHub username
        $username = (gh api user --jq .login)
        if ($username) {
            Write-Host "📎 Adding remote: https://github.com/$username/revv-brain-walkthrough.git" -ForegroundColor Cyan
            git remote add origin "https://github.com/$username/revv-brain-walkthrough.git"
        } else {
            Write-Host "❌ Could not determine GitHub username. Please add remote manually:" -ForegroundColor Red
            Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/revv-brain-walkthrough.git" -ForegroundColor White
            exit
        }
    }
}

# Ensure we're on main branch
Write-Host "`n🌿 Ensuring main branch..." -ForegroundColor Cyan
git branch -M main

# Push to GitHub
Write-Host "`n⬆️  Pushing to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ Successfully pushed to GitHub!" -ForegroundColor Green
    $username = (gh api user --jq .login)
    Write-Host "`n🌐 Your site will be available at:" -ForegroundColor Cyan
    Write-Host "   https://$username.github.io/revv-brain-walkthrough/" -ForegroundColor White
    Write-Host "`n📝 Don't forget to enable GitHub Pages:" -ForegroundColor Yellow
    Write-Host "   1. Go to: https://github.com/$username/revv-brain-walkthrough/settings/pages" -ForegroundColor White
    Write-Host "   2. Source: Deploy from a branch" -ForegroundColor White
    Write-Host "   3. Branch: main, folder: / (root)" -ForegroundColor White
    Write-Host "   4. Click Save" -ForegroundColor White
} else {
    Write-Host "`n❌ Push failed. Please check the error above." -ForegroundColor Red
}


