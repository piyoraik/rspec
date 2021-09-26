FROM ruby:2.6.3 as base-rails

RUN curl https://deb.nodesource.com/setup_14.x | bash

RUN apt-get update -qq && \
  apt-get install -y nodejs yarn mariadb-client
COPY ./Gemfile .
RUN bundle install


FROM base-rails as spec
COPY ./entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]