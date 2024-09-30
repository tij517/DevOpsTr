FROM ubuntu:18.04
RUN apt update
RUN apt install python-all, python-pip -y
ADD requirements.txt app.py
RUN mv app.py /opt/webapp
RUN mv requirements.txt /tmp
RUN pip install -qr requirements.txt
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python3", "/opt/webapp/app.py"]
