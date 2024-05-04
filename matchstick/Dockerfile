# FROM --platform=linux/x86_64 ubuntu:22.04

# ARG DEBIAN_FRONTEND=noninteractive

# ENV ARGS=""

FROM --platform=linux/x86_64 node:22.1-bullseye-slim

RUN apt update \
    && apt install -y sudo curl postgresql postgresql-contrib

# RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - \
#     && sudo apt-get install -y nodejs

RUN curl -OL https://github.com/LimeChain/matchstick/releases/download/0.6.0/binary-linux-22 \
    && chmod a+x binary-linux-22

RUN npm install -g @graphprotocol/graph-cli

RUN mkdir -p matchstick/subgraph
WORKDIR /matchstick/subgraph

CMD ../binary-linux-22 ${ARGS}