FROM python:3.9-buster

# download and install a dependency
#suggested by https://stackoverflow.com/a/60086958
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update
#RUN apt-get -y install git

RUN apt install -yy pandoc
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

RUN apt install -yy texlive-xetex

# this section adapted from https://ysko909.github.io/posts/install-japanese-font-to-docker-cotainer/
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update 
ENV ACCEPT_EULA=Y
RUN apt install -yy g++ \
    apt-utils \
    apt-transport-https \
    gcc \
    build-essential \
    unixodbc \
    unixodbc-dev \
    msodbcsql17 \
    mssql-tools \
    locales \
    fonts-takao-gothic \
    && apt-get upgrade -y \
    && apt-get clean \
    && sed -i -E 's/(CipherString\s*=\s*DEFAULT@SECLEVEL=)2/\11/' /etc/ssl/openssl.cnf \
    && pip install --upgrade pip \
    && pip install --no-cache-dir \
    autopep8 \
    flake8 \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"

RUN locale-gen ja_JP.UTF-8
RUN localedef -f UTF-8 -i ja_JP ja_JP
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:jp
ENV LC_ALL ja_JP.UTF-8
# end of section adapted from https://ysko909.github.io/posts/install-japanese-font-to-docker-cotainer/

#COPY ./docker-scripts/run.sh .
#COPY ./docker-scripts/tex-japanese-postprocess.py .
#CMD ["./run.sh"]
CMD ["true"]
