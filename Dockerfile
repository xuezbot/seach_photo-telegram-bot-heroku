FROM python:3-slim

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY bot.py bot.py
LABEL org.opencontainers.image.source=https://github.com/xuezbot/seach_photo-telegram-bot-heroku


CMD ["python", "bot.py" ]
