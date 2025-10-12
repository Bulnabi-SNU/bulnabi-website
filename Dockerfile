FROM ruby:3.2-alpine

# Install system dependencies
RUN apk add --no-cache \
    build-base \
    git \
    nodejs \
    npm \
    tzdata \
    linux-headers \
    bash

# Set working directory
WORKDIR /app

# Create a non-root user
RUN addgroup -g 1000 jekyll && \
    adduser -D -s /bin/bash -u 1000 -G jekyll jekyll

# Copy Gemfile and Gemfile.lock first for better caching
COPY Gemfile* ./

# Install Ruby dependencies
RUN gem install bundler && \
    bundle config set --local deployment false && \
    bundle config set --local path vendor/bundle && \
    bundle install

# Change ownership of the app directory
RUN chown -R jekyll:jekyll /app

# Switch to non-root user
USER jekyll

# Expose port 4000 (Jekyll's default)
EXPOSE 4000

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--watch", "--drafts"]
