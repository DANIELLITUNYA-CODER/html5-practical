# Static site (HTML + CSS) served by nginx:alpine
FROM nginx:alpine

# Copy entire site into default nginx web root
COPY . /usr/share/nginx/html

# Health check: verify nginx serves HTTP 200 on /
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost:80/ >/dev/null || exit 1