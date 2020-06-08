FROM python:latest

RUN apt-get upgrade
RUN apt-get update

# TODO: For now, we aren't going to compile hactool, since it doesn't appear to be used anywhere
COPY files/pip.txt pip.txt

# Install the dependencies
RUN pip install -r pip.txt

ENV PYTHONIOENCODING="UTF-8" 
RUN git clone --depth=1 https://github.com/eXhumer/TinGen /tingen

COPY files/start_tingen.sh /start_tingen.sh

ENTRYPOINT ["/bin/sh","start_tingen.sh"]
