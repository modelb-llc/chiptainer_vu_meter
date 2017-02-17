# CHIPtainer Example: VU Meter

This is a Docker file for building a container that starts the "VU Meter" demo. This demo uses the on-board microphone and LED's found on the CHIP Pro Dev Kit.

Simply run the Docker container, speak into the microphone, and watch as the lights respond to the sound of your voice.

To get started, log into the Docker NTC account:

```
docker login ntc-registry.githost.io
```

Then download the latest image:

```
docker pull ntc-registry.githost.io/nextthingco/chiptainer_vu_meter:master
```

Now run the Docker container, allowing access to the board's IO and sound hardware:

```
docker run --name vu-meter --privileged --cap-add SYS_RAWIO --device /dev/mem -v /sys:/sys -ti ntc-registry.githost.io/nextthingco/chiptainer_vu_meter:master
```

The demo should now be running. Press CTRL-C to quit.