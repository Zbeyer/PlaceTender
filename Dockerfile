# Use Ubuntu 22.04 which includes OpenSSL 3 (required by Meteor's MongoDB)
FROM ubuntu:22.04

# Prevent interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install required system packages
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    python3 \
    git \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Install Meteor
RUN curl https://install.meteor.com/ | sh

# Create app directory
WORKDIR /app

# Copy project files
COPY . .

# Expose Meteor port
EXPOSE 3000

# Allow Meteor to run as root inside Docker
ENV METEOR_ALLOW_SUPERUSER=1

# Start Meteor
CMD ["meteor", "run", "--port", "0.0.0.0:3000"]
