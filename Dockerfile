FROM python:3
COPY . /web
WORKDIR /web/api
RUN apt-get update
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "-u"]
CMD ["app.py"]
