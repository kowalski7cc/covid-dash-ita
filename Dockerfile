FROM python:3
WORKDIR /app
ADD requirements.txt .
RUN pip install -r requirements.txt
RUN pip install gunicorn
ADD dashboard.py .
ADD settings.py .
CMD [ "gunicorn", "dashboard:server", "-b 0.0.0.0:8080" ]
