
FROM python:3.11-slim


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app


COPY myproject/requirements.txt /app/requirements.txt
RUN pip install --upgrade pip \
    && pip install -r requirements.txt


COPY myproject /app



EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 