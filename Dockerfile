FROM node:20-alpine

COPY ./ /app/

WORKDIR /app

RUN NODE_OPTIONS="--max-old-space-size=64 --stack-trace-limit=100" npm run build

RUN echo "This shouldn't print out if memory was limited to 128M"
