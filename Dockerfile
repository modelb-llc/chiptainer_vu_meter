# Base off the Docker container with the Python IO library and Alpine.
FROM ntc-registry.githost.io/nextthingco/chiptainer_python_io:master

COPY vu-meter.py /

RUN apk update

ENTRYPOINT python vu-meter.py
