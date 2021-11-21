# Load the Docker image.
FROM ruby:3.0.3-alpine3.13

# Define environment variables.
ENV LANG C.UTF-8
ENV PS1 '▶ '

# Install Packages.
RUN apk update && apk upgrade && apk add --update --no-cache \
  build-base \
  postgresql-dev \
  tzdata \
  nodejs \
  git \
  libc6-compat

# Install Rails.
RUN gem install rails

# Set up a work directory.
WORKDIR /rails-7-hotwire
