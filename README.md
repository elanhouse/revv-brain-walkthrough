# Revv Brain Sales Demo Walkthrough

A localhost website for walking storage owners through our sales artifacts, based on the Call Framework.

## Quick Start

### Option 1: Simple HTTP Server (Recommended)

1. Install Node.js (if not already installed)
2. Run:
   ```bash
   npm install
   npm start
   ```
3. Open http://localhost:8080 in your browser

### Option 2: Python HTTP Server

```bash
# Python 3
python -m http.server 8080

# Python 2
python -m SimpleHTTPServer 8080
```

Then open http://localhost:8080 in your browser.

### Option 3: VS Code Live Server

1. Install the "Live Server" extension in VS Code
2. Right-click on `index.html`
3. Select "Open with Live Server"

## Structure

```
READY DEMO/
├── index.html                          # Main navigation page with sidebar
├── 01_Occupancy_Bucketing_Mockup.html  # First demo: Occupancy Bucketing
├── README.md                            # This file
├── package.json                         # Node.js dependencies
└── .gitignore                          # Git ignore rules
```

## Available Demos

### ✅ Ready
- **01. Occupancy Bucketing** - How we group properties into strategic buckets

### 🚧 Coming Soon
- 02. Detection Speed
- 03. Customer Quality
- 04. Ad Spend Attribution
- 05. Budget Allocation
- 06. Competitive Intelligence
- 07. Unit-Level Visibility
- 08. Pricing Power Analysis
- 09. Portfolio Health Score

## Adding New Demos

1. Create a new HTML file: `02_Demo_Name.html`
2. Add menu item to `index.html` in the sidebar:
   ```html
   <a href="#" class="menu-item" onclick="showDemo('demo-id')">
       <span class="menu-item-number">02</span>
       Demo Name
   </a>
   ```
3. Add loading function in the JavaScript section:
   ```javascript
   if (demoId === 'demo-id') {
       loadDemoName(container);
   }
   ```
4. Create the load function:
   ```javascript
   function loadDemoName(container) {
       container.innerHTML = `
           <div style="background: white; border-radius: 16px; overflow: hidden;">
               <iframe 
                   src="02_Demo_Name.html" 
                   style="width: 100%; height: calc(100vh - 4rem); border: none;">
               </iframe>
           </div>
       `;
   }
   ```

## Features

- **Sidebar Navigation** - Easy navigation between demos
- **Responsive Design** - Works on desktop and mobile
- **Clean Interface** - Professional look for sales calls
- **Easy to Extend** - Simple structure for adding new demos

## Deployment to GitHub Pages

1. Push to GitHub repository
2. Go to Settings > Pages
3. Select branch (usually `main` or `gh-pages`)
4. Select folder (usually `/root`)
5. Your site will be live at: `https://[username].github.io/[repo-name]`

## Usage in Sales Calls

1. Start the local server before the call
2. Open the site in your browser
3. Use the sidebar to navigate between demos
4. Share your screen to walk through each artifact
5. Each demo is self-contained and tells a complete story

## Customization

To customize for a specific prospect:
- Update facility names in the demo HTML files
- Adjust occupancy percentages to match their portfolio
- Modify stories to reflect their market size
- Update summary numbers to show their potential impact

---

**Note:** This is a static website - no backend required. All demos are HTML/CSS/JavaScript only.
