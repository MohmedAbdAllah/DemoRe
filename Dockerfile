FROM python:3-alpine

WORKDIR /app

COPY . .

RUN pip install --on-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["gunicon", "-b", "0.0.0.0:8080", "wsgi"]