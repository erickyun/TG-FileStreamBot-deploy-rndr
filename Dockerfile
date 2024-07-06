FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk add build-base bash

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x /app/start.sh

ENTRYPOINT ["/bin/bash", "/app/start.sh"]
