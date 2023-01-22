# syntax=docker/dockerfile:1
FROM ruby:2.7.0

RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  libpq-dev &&\
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y nodejs yarn

RUN mkdir /app
WORKDIR /app

EXPOSE 3001

COPY Gemfile .
COPY Gemfile.lock .
RUN gem update bundler
RUN bundle install --jobs 5

COPY package.json .
COPY yarn.lock .
RUN yarn install

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]