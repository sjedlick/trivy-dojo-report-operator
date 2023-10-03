FROM python:3.12-slim

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY src/* /src/

CMD kopf run /src/handlers.py --all-namespaces
