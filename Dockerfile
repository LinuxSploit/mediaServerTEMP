# Use an official Golang image as the base
FROM golang:1.22.5-alpine

# Install dependencies for Go, FFmpeg, and build tools
RUN apk add --no-cache bc ffmpeg bash gcc g++ libc-dev

# Set the working directory inside the container
WORKDIR /app

RUN curl -sSL https://get.livekit.io | bash

# Expose the port the app runs on
EXPOSE 7880
EXPOSE 7881
EXPOSE 7882

# Command to run the server
CMD ["livekit-server","--dev"]