docker-crond
============

Example running crond with Alpine Linux

Modify the `Dockerfile` to add your custom crond events.  Note that the time zone defaults to UTC; see the commented out lines for how to set the time zone

`docker run -it --rm --init --name crond mbentley/crond`

**Note**: You will want to use an init since crond doesn't respond to kill signals on its own
