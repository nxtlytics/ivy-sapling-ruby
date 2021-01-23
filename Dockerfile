FROM nxtlytics/ruby:v0.0.5

# Add the application code to /app
ADD src /app

# Ensure work directory is /app
WORKDIR /app

# Install the dependencies
RUN bundle install

# Run the application
CMD bundle exec /app/main.rb

EXPOSE 3000
