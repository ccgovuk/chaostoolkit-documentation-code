FROM python:3
RUN pip install cherrypy
RUN pip install requests
RUN mkdir /astral
COPY sunset.py /astral/sunset.py
WORKDIR /astral
ENTRYPOINT python /astral/sunset.py