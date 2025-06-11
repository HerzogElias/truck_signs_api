FROM python:3.9-slim

WORKDIR /app

COPY . .
COPY .env /app/.env

RUN chmod +x ./entrypoint.sh
RUN apt-get update && apt-get install -y gcc
RUN apt-get update && apt-get install -y netcat
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["./entrypoint.sh"]
