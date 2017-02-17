# Base off the Docker container with the Python IO library and Alpine.
FROM ntc-registry.githost.io/nextthingco/chiptainer_python_io:master

# Copy the python script which controls the LED's based on mic sound level.
COPY vu-meter.py /

# Add packages needed to build and run the demo.
RUN apk update && \
	apk add gcc && \
	apk add g++ && \
	apk add make && \
	apk add alsa-lib-dev && \
	apk add py2-pip && \
	pip install --upgrade pip && \
	pip install pyalsaaudio && \

	# Remove unneeded packages once build is complete.
	apk del gcc && \
	apk del g++ && \
	apk del make && \
	apk del py2-pip

# Run the VU Meter demo when the container starts.
ENTRYPOINT echo "VU Meter is now running!" && \
	python vu-meter.py
