# Student Loan Analyzer
[Use it here!](https://robbie-med.github.io/LoanAhlyzer/)

A privacy-focused, client-side web application for analyzing and visualizing student loan data.

## 🔒 Privacy First

- **100% Private**: All calculations happen in your browser
- **No Server**: Nothing is sent anywhere
- **Offline Capable**: Works without internet after initial load
- **No Tracking**: Zero analytics, cookies, or data collection
- **Open Source**: Transparent and verifiable code

## ✨ Features

- **Smart Parser**: Paste loan data from your servicer (Nelnet, Mohela, etc.) and it automatically extracts the information
- **Manual Entry**: Add, edit, and remove loans manually
- **Interactive Visualizations**:
  - Loan breakdown by type
  - Interest rate comparison
  - Balance projections over time
- **Repayment Strategies**: Guidance on PSLF, IDR plans, and general repayment methods
- **Export/Import**: Save and load your loan data as JSON files

## 🚀 How to Use

### Option 1: Open Locally
Simply open `index.html` in any web browser. No server needed!

### Option 2: Deploy to GitHub Pages

1. Create a new GitHub repository
2. Push this folder to the repository:
   ```bash
   cd loan-analyzer-app
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git
   git push -u origin main
   ```
3. Enable GitHub Pages:
   - Go to repository Settings > Pages
   - Select "Deploy from branch"
   - Choose "main" branch and "/ (root)" folder
   - Save
4. Your app will be live at: `https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/`

### Option 3: Deploy to Netlify (Easiest)

1. Go to [netlify.com](https://netlify.com)
2. Drag and drop the `loan-analyzer-app` folder
3. Done! You'll get a URL like `https://random-name-12345.netlify.app`

## 📋 How to Get Your Loan Data

1. Log into your loan servicer (Nelnet, Mohela, Aidvantage, etc.)
2. Go to your loan details page
3. Select all text (Ctrl+A or Cmd+A)
4. Copy (Ctrl+C or Cmd+C)
5. Paste into the app
6. Click "Parse Loans"

The parser understands various formats and will try its best to extract:
- Principal Balance
- Unpaid Interest
- Interest Rate
- Daily Interest Accrual
- Monthly Payment
- Loan Type

## 🛠️ Technical Details

- Pure HTML/CSS/JavaScript (no build process needed)
- Chart.js for visualizations
- No dependencies except Chart.js CDN
- Mobile responsive
- Works on all modern browsers

## 📝 Data Format

If the parser doesn't work, you can manually enter loans or import a JSON file with this format:

```json
[
  {
    "group": "Loan 1",
    "type": "UNSUB",
    "principal": 25000,
    "interest": 1500,
    "rate": 6.5,
    "daily": 4.45,
    "payment": 150
  }
]
```

## 🤝 Contributing

Feel free to fork, modify, and share! This tool is meant to help people understand their student loans better.

## ⚠️ Disclaimer

This tool is for informational and educational purposes only. It does not provide financial advice. Always verify your loan information with your official loan servicer and consult with a financial advisor for personalized advice.

## 📜 License

MIT License - Use freely!

---

Made with ❤️ for students drowning in debt
