#FROM python:3.6-slim
#FROM ubuntu
FROM python

#RUN mkdir /application
#WORKDIR /application
#COPY requirements.txt .
#COPY flask_app.py .
#COPY templates .
RUN useradd -ms /bin/bash ubuntu

#RUN whoami
#RUN cat /etc/resolv.conf
#RUN apt-get update && apt-get install -y pip
#RUN pip install -r requirements.txt
#ENV PYTHONUNBUFFERED 1

#EXPOSE 8001
EXPOSE 8000
STOPSIGNAL SIGINT

USER ubuntu
WORKDIR /home/ubuntu
RUN echo 'hello' > index.html
#ENTRYPOINT ["python3"]
CMD ["python","-m","http.server"]
