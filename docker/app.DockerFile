FROM ruby:2.3.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
# ENV RAILS_ROOT /var/www/app_name
ENV RAILS_ROOT /var/www/brail347a22

Run echo railsroot $RAILS_ROOT
RUN echo pwd $PWD

RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT


# Setting env up
ENV RAILS_ENV=production
ENV RAKE_ENV=production
ENV RACK_ENV=production

# Adding gems
COPY Gemfile $RAILS_ROOT/Gemfile
COPY Gemfile.lock $RAILS_ROOT/Gemfile.lock
RUN gem install puma
RUN gem install pg

# RUN bundle install --jobs 20 --retry 5 --without development test
RUN bundle install --jobs 20 --retry 5 

# Adding project files
COPY  . $RAILS_ROOT
RUN bundle exec rake assets:precompile RAILS_ENV=production

EXPOSE 3000
# CMD ["bundle", "exec", "puma", "-C", "config/puma_production.rb"]
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]