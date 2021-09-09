
FROM node:latest
RUN apt-get update \
	&& wget https://github.com/ether/etherpad-lite/archive/1.8.14.zip \
	&& unzip 1.8.14.zip \
	&& rm 1.8.14.zip \
	&& cd etherpad-lite-1.8.14 \
	&& rm -f settings.json \
ADD settings.json /etherpad-lite-1.8.14/settings.json
WORKDIR etherpad-lite-1.8.14
EXPOSE 9001 
CMD ["src/bin/run.sh" , "--root"]
