#!/bin/sh

curl -L "$CONFIG_IN_URL" -o /app/.env; curl -L "$CONFIG_IN_URL" -o .env; python3 scheduler.py & python3 -m WebStreamer
