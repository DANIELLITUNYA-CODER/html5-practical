# GreenFarm — HTML5 Practical

This site demonstrates HTML5 semantics and accessibility with a farming theme, enhanced with modern CSS3 styling and Docker containerization.

## Pages

- **index.html** — Home page: semantic structure, quotes, time, code/kbd/samp.
- **about.html** — Farm history, unordered/ordered/definition lists.
- **media.html** — Responsive farm images, cow sound, irrigation video with captions.
- **extras.html** — Farm work table, interactive details, dialog, progress, meter.

## Features

- **Modern CSS3 Styling**: Responsive design with CSS Grid and Flexbox
- **Design Tokens**: CSS custom properties for consistent theming
- **Dark Mode**: Automatic dark mode support via `prefers-color-scheme`
- **Accessibility**: Preserved semantic HTML5 structure and accessibility features
- **Responsive**: Mobile-first design with optional sidebar layout
- **Dockerized**: Ready for containerized deployment

## Docker Usage

### Build the Docker Image

Replace `<your-dockerhub-username>` with your actual Docker Hub username:

```bash
docker build -t <your-dockerhub-username>/greenfarm-html5 .
```

### Run the Container

```bash
docker run -d -p 8080:80 --name greenfarm <your-dockerhub-username>/greenfarm-html5
```

The site will be available at `http://localhost:8080`

### Push to Docker Hub

First, log in to Docker Hub:

```bash
docker login
```

Then push the image:

```bash
docker push <your-dockerhub-username>/greenfarm-html5
```

### Stop and Remove Container

```bash
docker stop greenfarm
docker rm greenfarm
```

## Live Site

**Live site:** https://<username>.github.io/farmer-site/
