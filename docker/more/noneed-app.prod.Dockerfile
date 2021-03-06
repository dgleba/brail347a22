
# Dockerfile.dev
# FROM ruby:2.4.5 as builder
FROM ruby:2.6 as builder

# ENV BUNDLE_PATH /bundle
# ENV RAILS_ROOT /myapp

# nothanks RUN bundle config --global frozen 1

# unneeded.. COPY Gemfile Gemfile.lock ./

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mc \
  && echo "alias lsl='ls -la'" >>   ~/.bashrc ; chmod ugo+rw  ~/.bashrc \
  && echo "alias psg='ps -ef|grep '" >>   ~/.bashrc  \
  && mkdir -p /app

WORKDIR /app

EXPOSE 3010

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3010" ]

