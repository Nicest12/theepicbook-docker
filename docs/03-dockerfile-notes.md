# Dockerfile Notes

EpicBook uses a multi-stage Docker build.

Stage 1 (Builder)
- Uses node:18-alpine
- Installs production dependencies
- Copies application source code

Stage 2 (Runtime)
- Uses a clean node:18-alpine image
- Copies only the built application
- Runs the server using node server.js

Benefits

1. Smaller image size
2. Faster container startup
3. Reduced security attack surface
4. Only production dependencies included
