# Base off the Docker container with the Python IO library and Alpine.
FROM ntc-registry.githost.io/nextthingco/chiptainer_python_io:master

COPY vu-meter.py /

RUN apk update && \
	apk add gcc && \
	apk add g++ && \
	apk add make && \
	apk add alsa-lib-dev && \
	apk add py2-pip && \
	pip install --upgrade pip && \
	pip install pyalsaaudio && \

	apk del gcc && \
	apk del g++ && \
	apk del make && \
	apk del alsa-lib-dev && \
	apk del py2-pip

ENTRYPOINT echo "VU Meter is now running!" && \
	python vu-meter.py
