FROM ubuntu:16.04

RUN apt-get update && \
	  apt-get install -y && \
    apt-get install -y python-pip && \
    apt-get install -y python-setuptools

WORKDIR /code

COPY . ./

EXPOSE 3000

RUN pip install -r requirements.txt

CMD python app.py
