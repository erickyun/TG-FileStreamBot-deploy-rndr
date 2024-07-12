FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt ./

# Install build-base, bash, and curl
RUN apk add build-base bash curl

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install schedule

COPY . .

RUN chmod +x /app/start.sh

ENTRYPOINT ["/bin/bash", "/app/start.sh"]
