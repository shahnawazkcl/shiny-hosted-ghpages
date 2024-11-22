![GitHub Pages](https://img.shields.io/badge/github-pages-active)
![GitHub last commit](https://img.shields.io/github/last-commit/shahnawazkcl/shiny-hosted-ghpages)
[![MIT License](https://img.shields.io/badge/License-MIT%20License-orange)](https://opensource.org/license/mit)
[![PRs welcome](https://img.shields.io/badge/Prs-welcome-brightgreen)](https://github.com/shahnawazkcl/shiny-hosted-ghpages/pulls)
[![Forks](https://img.shields.io/github/forks/shahnawazkcl/shiny-hosted-ghpages)](https://github.com/shahnawazkcl/shiny-hosted-ghpages/network)

# DataPulse Dashboard

## Overview
**DataPulse Dashboard** is an interactive R Shiny application designed to help users visualize and interact with data in a simple and engaging way. The app is developed using the `shiny` package in R, packaged with **ShinyLive** for hosting on GitHub Pages. It uses a combination of UI elements and server logic to present data interactively, providing an intuitive experience for end-users. 

**Try it out:** [Live Demo on GitHub Pages](https://shahnawazkcl.github.io/shiny-hosted-ghpages)

## Features
- 📊 **Interactive Visualizations**: Real-time rendering of plots and data summaries.
- 🛠️ **User-Friendly Interface**: Built with the `bslib` package for an elegant UI.
- 📝 **Tooltips and Help**: Uses `shinyhelper` for quick tips to help new users.
- 🚀 **Hosted on GitHub Pages**: Made possible with **ShinyLive** to create a static version of the Shiny app.

## Motivation
The project was inspired by the need for an easy-to-access data visualization tool that could be run entirely from the web, without any server backend, thanks to the power of WebAssembly and **ShinyLive**. This makes it perfect for small data projects and showcases the potential of R Shiny for sharing insights.

## Installation
If you'd like to run the code locally:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/shahnawazkcl/shiny-hosted-ghpages.git
   ```
2. **Install Required Packages:**
   Open `R` and run:
   ```r
   install.packages(c("shiny", "shinylive", "httpuv", "bslib", "miniUI", "shinyhelper"))
   ```
3. **Run the Application:**
   ```r
   shiny::runApp('shiny_app')
   ```

## Usage
This application demonstrates:
1. How to develop interactive dashboards in **R Shiny**.
2. How to convert the app into a static site using **ShinyLive**.
3. How to host a Shiny app on GitHub Pages.

## Deployment
To deploy the application to GitHub Pages:
1. Export the app using **ShinyLive**:
   ```sh
   shinylive export app.R --output-dir shiny_app_shinylive
   ```
2. Push the exported content to the `gh-pages` branch of your repository.

GitHub will automatically host the application from that branch!

## License
This repository is licensed under the **MIT License**. See [LICENSE](LICENSE) for more information.

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request or open an issue to suggest improvements or new features.

## Acknowledgments
- **Shiny** by RStudio - for creating interactive web applications.
- **ShinyLive** - for making R Shiny apps easy to host on static sites.
- **GitHub Pages** - for providing free hosting.
