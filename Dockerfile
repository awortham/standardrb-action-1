FROM ruby:2.6.6-alpine

RUN apk add --update build-base git
LABEL "repository"="https://github.com/awortham/standardrb-action-1"
LABEL "maintainer"="Aaron Wortham <wortham.aaron@gmail.com>"
LABEL "version"="0.0.3"

COPY lib /action/lib
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
