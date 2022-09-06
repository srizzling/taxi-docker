FROM python:3

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install apt-file -y && apt-file update && apt-get install vim -y

CMD ["taxi"]
