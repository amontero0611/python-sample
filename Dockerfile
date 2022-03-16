FROM ubuntu:20.04

RUN apt-get update -y && \
    apt install python3-pip -y 

# We copy just the requirements.txt first to leverage Docker cache
#COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

#RUN pip install -r requirements.txt
RUN pip install flask

COPY . /app
 
ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]