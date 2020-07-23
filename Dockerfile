FROM python:3.7
EXPOSE 8000
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD python manage.py runserver 0.0.0.0:8000