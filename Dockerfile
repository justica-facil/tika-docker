FROM ubuntu:latest

ENV TIKA_VERSION 1.18
ENV TIKA_SERVER_URL http://archive.apache.org/dist/tika/tika-server-$TIKA_VERSION.jar
ENV SHA512="e8ea97bccb9d7edadf6d0bc8006c542f539ab5cfa81bc38578687c46f62202e9ebd4ab55314cd54723c49b17f351571bcfc55914764425bf608c3e8d93598d8a  tika-server-$TIKA_VERSION.jar"

RUN	apt-get update \
	&& apt-get install openjdk-8-jre-headless curl gdal-bin tesseract-ocr \
		tesseract-ocr-por -y \
    && echo "$SHA512" > /verify.sha512 \
	&& curl -sSL "$TIKA_SERVER_URL" -o /tika-server-${TIKA_VERSION}.jar \
    && sha512sum -c /verify.sha512 \
	&& apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 9998
ENTRYPOINT java -jar /tika-server-${TIKA_VERSION}.jar -h 0.0.0.0
