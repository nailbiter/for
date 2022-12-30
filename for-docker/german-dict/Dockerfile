# use an existing docker image as a base
FROM python:3.9-slim

# download and install a dependency
#suggested by https://stackoverflow.com/a/60086958
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get -y install git

RUN apt-get -y install libwww-dict-leo-org-perl

CMD ["echo"]
