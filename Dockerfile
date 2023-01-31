FROM python:3.10

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 3000 443

ENTRYPOINT [ "python" ]

CMD ["run.py"]