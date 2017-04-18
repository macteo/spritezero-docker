FROM ubuntu

ENV IMPORT_DATA_DIR=/import

RUN apt update && apt install -y --no-install-recommends \
	  curl \
	  nano \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt update && apt install -yq \
	  nodejs

WORKDIR /usr/src/app
COPY . /usr/src/app

# RUN npm install -g @mapbox/spritezero-cli

CMD ["./generate-sprites.sh"]
