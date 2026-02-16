#!/bin/bash

echo "🚀 Student Loan Analyzer - GitHub Deployment Helper"
echo "=================================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git initialized"
    echo ""
fi

# Check if remote exists
if ! git remote get-url origin &>/dev/null; then
    echo "❓ GitHub repository URL not set."
    echo ""
    echo "Please create a repository on GitHub first:"
    echo "   https://github.com/new"
    echo ""
    read -p "Enter your GitHub repository URL: " REPO_URL

    if [ -z "$REPO_URL" ]; then
        echo "❌ No URL provided. Exiting."
        exit 1
    fi

    git remote add origin "$REPO_URL"
    echo "✅ Remote added: $REPO_URL"
    echo ""
fi

# Add all files
echo "📝 Adding files..."
git add .

# Commit
echo "💾 Creating commit..."
read -p "Enter commit message (or press Enter for default): " COMMIT_MSG

if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Update student loan analyzer"
fi

git commit -m "$COMMIT_MSG"

# Push
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "   1. Go to your repository on GitHub"
echo "   2. Click Settings > Pages"
echo "   3. Under 'Source', select 'Deploy from branch'"
echo "   4. Choose 'main' branch and '/ (root)' folder"
echo "   5. Click Save"
echo "   6. Wait 1-2 minutes, then visit your site!"
echo ""
echo "🎉 Your app will be live at:"
echo "   https://YOUR-USERNAME.github.io/REPO-NAME/"
echo ""
