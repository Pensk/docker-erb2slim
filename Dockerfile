FROM ruby:2.7.3

WORKDIR /app

RUN touch Gemfile

RUN echo "source 'https://rubygems.org'" > Gemfile
RUN echo 'gem "html2slim"' >> Gemfile

RUN mkdir /app/src

RUN bundle install

ENTRYPOINT ["bundle", "exec", "erb2slim"]
