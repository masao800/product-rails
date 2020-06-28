FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql \
    yarn
WORKDIR /product-rails
COPY Gemfile Gemfile.lock /product-rails/
RUN bundle install