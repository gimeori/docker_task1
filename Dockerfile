FROM python:3.12-alpine

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
COPY . /usr/src/app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
EXPOSE 8080

CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port", "8000"]