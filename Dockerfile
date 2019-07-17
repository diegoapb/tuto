FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN mkdir /code/mysite
WORKDIR /code/mysite
RUN pip install Django
RUN pip install psycopg2
RUN pip install psycopg2-binary
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
COPY . /code/