FROM python:3.6
EXPOSE 8000
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install git+https://github.com/gunthercox/chatterbot-corpus.git#egg=chatterbot-corpus
COPY . .
CMD python manage.py runserver 0.0.0.0:8000