FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

# optionally set the time zone; need to install the tzdata package to do that
#RUN apk add --no-cache tzdata
#RUN ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime

# add a cron entry
RUN echo "* * * * *     echo date > /tmp/datetimeoutput" >> /etc/crontabs/root

CMD ["/usr/sbin/crond","-c","/etc/crontabs","-f"]
