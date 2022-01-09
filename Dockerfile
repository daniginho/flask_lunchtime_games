FROM python:3.9.2-slim-buster

RUN pip install pipenv

ARG USERID=1000
ARG GROUPID=1000
RUN addgroup --system --gid $GROUPID appuser
RUN adduser --system --uid $USERID --gid $GROUPID appuser

RUN mkdir /workbench

WORKDIR /workbench
COPY ./Pipfile /workbench/Pipfile
COPY ./Pipfile.lock /workbench/Pipfile.lock 
COPY ./requirements.txt /workbench/requirements.txt

#RUN set -ex && pipenv install --deploy --system
RUN pipenv install --deploy --system --dev

COPY ./main.py /workbench/main.py
COPY ./website /workbench/website

USER appuser
EXPOSE 5000
CMD ["python3", "-u", "./main.py"]