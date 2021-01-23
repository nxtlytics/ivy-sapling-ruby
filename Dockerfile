FROM nxtlytics/ruby:v0.0.5

# Create app user
RUN adduser --home /app app ; \
    chown -R app: /app

# Add the application code to /app
COPY --chown=app:app . /app

# Change to app user
USER app

# Ensure work directory is /app
WORKDIR /app

# Install the dependencies
RUN bundle install

# Run the application
CMD bundle exec /app/main.rb

EXPOSE 3000
