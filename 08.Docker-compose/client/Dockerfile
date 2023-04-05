FROM python:3.11
ADD client.py /client/
WORKDIR /client/
CMD ["sh", "-c", "curl http://localhost:8000 > curl.log"]
