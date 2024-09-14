
    # Use the official Ruby image as the base image
    FROM ruby:3.3.0
    
    # Install dependencies
    RUN apt-get update -qq && apt-get install -y build-essential libsqlite3-dev nodejs
    
    # Set the working directory inside the container
    WORKDIR /app
    
    # Copy the Gemfile and Gemfile.lock
    COPY Gemfile Gemfile.lock ./
    
    # Install the gems
    RUN bundle install
    
    # Copy the rest of the app's source code
    COPY . .
    
    # Precompile assets (if necessary)
    #RUN bundle exec rake assets:precompile
    
    # Expose port 3000 to the outside world
    EXPOSE 3000
    
    # Run the server (this will be the default command when the container starts)
    CMD ["rails", "server", "-b", "0.0.0.0"]