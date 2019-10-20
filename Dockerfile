FROM python:3.7.3-stretch

WORKDIR /flask

COPY flask/ /flask/

RUN pip3 install --upgrade pip &&\
    pip3 install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 5000

CMD [ "python", "app.py" ]