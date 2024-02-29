FROM python:3.11-slim

WORKDIR /crud

COPY ./crud /crud

RUN pip install -r /crud/requirements.txt

ENV SECRET_KEY django-insecure-nw^y+m^wmxza1asgk+)!ua2qx9)g+#v=6%76-9i8i(6eqiw94j
ENV DEBUG 1
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1 

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
