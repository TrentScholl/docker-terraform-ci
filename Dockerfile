FROM hashicorp/terraform:0.11.7
LABEL Author="Trent Scholl <me@trentscholl.com>"

ENV TERRAGRUNT_VERSION=0.16.3

RUN curl -sL https://github.com/gruntwork-io/terragrunt/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_386 \
  -o /bin/terragrunt && chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]