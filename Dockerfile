FROM python:3.9.13-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONNUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
COPY wait.sh .
RUN chmod +x ./wait.sh
RUN pip install -r requirements.txt
COPY . /code/
WORKDIR /code/todoList/todoList