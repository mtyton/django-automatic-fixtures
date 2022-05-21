FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /example_project
WORKDIR /example_project
COPY requirements.txt /example_project/
RUN pip install -r requirements.txt
COPY ./example_project/ /example_project/
CMD python3.8 example_project/manage.py migrate && python3.8 example_project/manage.py runserver 0.0.0.0:8000
