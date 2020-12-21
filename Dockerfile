# pull offical base image
FROM  python:3.7.3-slim

ENV ENVIRON=DEV

ENV PYHTONDONTWRITEBYTHECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./ ./

RUN pip install Flask
RUN pip install mysql-connector-python
CMD python app.py
