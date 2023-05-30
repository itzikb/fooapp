FROM ubuntu

RUN mkdir /application
WORKDIR /application
COPY requirements.txt .
COPY flask_app.py .
COPY templates .
RUN useradd -ms /bin/bash ubuntu

#UN apt-get update && apt-get install -y pip
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1

EXPOSE 8000
STOPSIGNAL SIGINT

USER ubuntu
WORKDIR /tmp
ENTRYPOINT ["python3"]
CMD ["flask_app.py"]
