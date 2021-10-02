FROM ruby:2.6.3-alpine3.10 as base-rails
RUN apk update && apk add bash nodejs git build-base make g++ sqlite-dev tzdata
COPY ./Gemfile .
COPY ./Gemfile.lock .
RUN bundle install

FROM base-rails as spec
WORKDIR /app
COPY ./entrypoint.sh ./
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]