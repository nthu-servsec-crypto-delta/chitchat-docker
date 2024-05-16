FROM ruby:3.3.1

RUN apt-get update && apt-get install libsodium23

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --without rubocop

COPY . .

CMD ["rake", "run:dev"]
