FROM ruby:2.3.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
# ENV RAILS_ROOT /var/www/app_name
ENV RAILS_ROOT /var/www/brail347a22

RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Setting env up
ENV RAILS_ENV='production'
ENV RAKE_ENV='production'

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install puma
RUN gem install pg

# RUN bundle install --jobs 20 --retry 5 --without development test
RUN bundle install --jobs 20 --retry 5 

# Adding project files
COPY  . .
RUN bundle exec rake assets:precompile

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]