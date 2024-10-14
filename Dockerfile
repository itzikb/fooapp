FROM python
EXPOSE 8000
STOPSIGNAL SIGINT
WORKDIR /tmp
RUN echo 'hello' > /tmp/index.html
CMD ["python","-m","http.server"]
