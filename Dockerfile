FROM debian:buster
ENV LANG=C.UTF-8
RUN apt-get update \
   && apt-get install -y curl gnupg \
   && curl -o erlang-solutions_2.0_all.deb https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb \
   && dpkg -i erlang-solutions_2.0_all.deb \
   && apt-get update \
   && apt-get install -y elixir \
   && mix local.hex --force
COPY . /src
WORKDIR /src
RUN mix deps.get && mix
