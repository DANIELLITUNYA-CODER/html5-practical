# HTML5 + CSS3 + Docker Practical

This is a follow-on to the HTML5 semantic demonstration, now enhanced with production-ready CSS3 styling and Docker containerization.

## Features

- **index.html** — Home page: semantic structure, quotes, time, code/kbd/samp.
- **about.html** — Farm history, unordered/ordered/definition lists.
- **media.html** — Responsive farm images, cow sound, irrigation video with captions.
- **extras.html** — Farm work table, interactive details, dialog, progress, meter.

## Design System

### CSS3 Features
- **Design tokens**: CSS custom properties for consistent colors, typography, and spacing
- **Responsive layout**: Mobile-first design with fluid typography using `clamp()`
- **Dark mode support**: Automatic color scheme adaptation using `prefers-color-scheme`
- **Component system**: Reusable card, table, and utility classes
- **Motion**: Subtle animations with reduced motion support for accessibility

### Typography Scale
- System font stack for optimal performance and readability
- Fluid type scaling from mobile to desktop
- Monospace font for code elements

### Color System
- Light mode: Clean whites and subtle grays with blue brand accent
- Dark mode: Deep blues with high contrast for readability
- Semantic color usage throughout components

## Accessibility Features

### Preserved from HTML5 version
- Skip links for keyboard navigation
- Semantic headings structure (h1 → h2 → h3)
- ARIA labels and landmarks (`aria-current`, `aria-label`)
- Alt text for images
- Captions for video content
- Table headers with proper scope attributes

### Enhanced with CSS3
- High contrast focus indicators with `outline` rings
- Reduced motion support for animations
- Color contrast optimized for WCAG standards
- Touch targets sized appropriately for mobile

### Interactive Elements
- Keyboard accessible navigation
- Focus-visible styling for better keyboard navigation
- Hover states that work across devices

## Docker Integration

### Build the Container
```bash
docker build -t daniellitunya/html5-practical .
```

### Run Locally
```bash
docker run -p 8080:80 daniellitunya/html5-practical
```

Visit: http://localhost:8080

### Push to Docker Hub
```bash
docker tag daniellitunya/html5-practical daniellitunya/html5-practical:latest
docker push daniellitunya/html5-practical:latest
```

### Health Check
The container includes a health check that verifies nginx is serving content:
```bash
docker ps  # Check health status
```

## File Structure
```
├── assets/
│   ├── css/
│   │   └── styles.css      # All styling in one file
│   ├── images/             # Responsive images
│   ├── audio/              # Audio demonstrations
│   ├── video/              # Video with captions
│   └── captions/           # VTT caption files
├── index.html              # Home with semantic elements
├── about.html              # Lists and definitions
├── media.html              # Picture, audio, video
├── extras.html             # Tables, details, progress
├── Dockerfile              # nginx:alpine container
└── .dockerignore           # Container build exclusions
```

## Technical Constraints

- **No JavaScript**: Pure HTML5 + CSS3 implementation
- **Single CSS file**: All styles consolidated in `assets/css/styles.css`
- **Semantic preservation**: All original HTML5 structure maintained
- **Progressive enhancement**: Works without CSS, enhanced with styling

**Live site:** https://daniellitunya.github.io/html5-practical/
