FROM ruby:2.6.3-alpine3.10 as base-rails
RUN apk add bash nodejs git build-base make sqlite-dev tzdata
WORKDIR /app
COPY ./Gemfile ./Gemfile.lock ./
RUN bundle install

FROM base-rails as spec
COPY ./shell/rspec.sh ./
RUN chmod +x ./rspec.sh
ENTRYPOINT [ "./rspec.sh" ]

FROM base-rails as dev
RUN apk add imagemagick vim
COPY ./shell/dev.sh ./
RUN chmod +x ./dev.sh
ENTRYPOINT [ "./dev.sh" ]
