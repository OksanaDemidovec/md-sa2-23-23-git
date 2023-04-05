FROM python:3.11
ADD client.py /client/
WORKDIR /client/
RUN curl http://localhost:8000 > curl.log
