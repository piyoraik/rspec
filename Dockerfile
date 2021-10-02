FROM ruby:2.6.3-alpine3.10 as base-rails
RUN apk update && apk add bash nodejs git build-base make g++ sqlite-dev tzdata
COPY ./Gemfile .
COPY ./Gemfile.lock .
RUN bundle install
WORKDIR /app

FROM base-rails as spec
COPY ./shell/rspec.sh ./
RUN chmod +x ./rspec.sh
ENTRYPOINT [ "./rspec.sh" ]

FROM base-rails as dev
RUN apk add imagemagick
COPY ./shell/dev.sh ./
RUN chmod +x ./dev.sh
ENTRYPOINT [ "./dev.sh" ]