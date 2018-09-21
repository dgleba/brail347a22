FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mc

#RUN  apt-get install -y  mc 
RUN  echo "alias lsl='ls -la'" >>   ~/.bashrc ; chmod ugo+rw  ~/.bashrc
RUN echo "alias psg='ps -ef|grep '" >>   ~/.bashrc 

ENV BUNDLE_PATH /bundle

ENV RAILS_ROOT /myapp

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

 RUN bundle install --jobs 40 --retry 5

COPY . /myapp

EXPOSE 3000
