FROM python:3.9-slim

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

ARG BUILD_ID
ENV BUILD_ID=$BUILD_ID

EXPOSE 5000

CMD ["python", "app.py"]