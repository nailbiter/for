# use an existing docker image as a base
FROM python:3.9-slim

# download and install a dependency
#suggested by https://stackoverflow.com/a/60086958
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get -y install git

WORKDIR /usr/app
#COPY ./requirements.txt ./
ARG TAG
RUN git clone --depth 1 https://github.com/nailbiter/for.git --branch ${TAG} --single-branch
RUN pip3 install ./for/forpython/trello
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
COPY cron.json ./
COPY script.py ./
COPY card_descriptions/ ./card_descriptions

ARG TRELLO_KEY
ENV TRELLO_KEY ${TRELLO_KEY}
ARG TRELLO_TOKEN
ENV TRELLO_TOKEN ${TRELLO_TOKEN}
ARG CRONTRELLO_POST_REPORT_HOOK
ENV CRONTRELLO_POST_REPORT_HOOK ${CRONTRELLO_POST_REPORT_HOOK}
CMD ["python3","script.py","-c","trello high create-card-from-description --template-folder ./card_descriptions -t","-r","cron.json","--dt-shift","9"]
