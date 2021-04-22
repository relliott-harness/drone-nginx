 FROM python:3.7.5-slim

COPY . /app
WORKDIR /app
LABEL jira=HAR-3

EXPOSE 5000
ENTRYPOINT ["waitress-server"]
CMD ["--port=5000", "app:app"]
