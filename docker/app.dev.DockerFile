FROM ruby:2.3-stretch

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
# ENV RAILS_ROOT /var/www/app_name
ENV RAILS_ROOT /var/www/brail347a22

RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT


# Adding gems
COPY Gemfile $RAILS_ROOT/Gemfile
COPY Gemfile.lock $RAILS_ROOT/Gemfile.lock
RUN gem install puma
RUN gem install pg

# Adding project files
COPY  . $RAILS_ROOT

# RUN bundle install --jobs 20 --retry 5 --without development test
RUN bundle install --jobs 20 --retry 5 


# RUN bundle exec rake assets:precompile

EXPOSE 3000
# CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]