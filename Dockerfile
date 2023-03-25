FROM ruby:latest

RUN apt-get update -qq && apt-get install -y libpq-dev

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD ["ruby", "bot.rb"]