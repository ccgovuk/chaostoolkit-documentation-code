FROM python:3
RUN pip install cherrypy
RUN pip install "astral<2"
RUN pip install pytz
RUN mkdir /astral
COPY astre.py /astral/astre.py
WORKDIR /astral
ENTRYPOINT python /astral/astre.py