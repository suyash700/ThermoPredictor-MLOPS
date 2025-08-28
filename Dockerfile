#BASE IMAGE
FROM python:3.10-slim

#WORKDIR
WORKDIR /app

#COPY
COPY requirements.txt .
#INSTALL DEPS
RUN pip install -r requirements.txt

COPY . . 

#
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
