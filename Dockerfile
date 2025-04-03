FROM ruby:3.2

# Set the working directory
WORKDIR /srv/jekyll

# Install system dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . /srv/jekyll

# Install Bundler and project dependencies
RUN gem install bundler
RUN bundle install

# Expose the port for the local server
EXPOSE 4000

# Start the Jekyll server in watch mode
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--watch"]
