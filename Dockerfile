FROM python:3.13

WORKDIR /app

COPY . .

RUN pip install -r src/requirements.txt

RUN python src/manage.py migrate

EXPOSE 8080

ENTRYPOINT ["python", "src/manage.py", "runserver", "0.0.0.0:8080"]
