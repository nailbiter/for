FROM python:3.9-slim-buster
LABEL maintainer="nailbiter"

RUN apt-get update && apt-get install -y git

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY split.py .

CMD ["python3","split.py","./in/pdf.pdf","./in/names.txt","./out"]
