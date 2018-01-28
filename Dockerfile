FROM leoflores/alpine-py3-psycopg
LABEL maintainer="Leonardo Flores <contato@leonardocouy.com>"

ENV APP_DIR=/app/
ENV PYTHONUNBUFFERED=1

# Install dependencies
ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

# Add app dir
RUN mkdir $APP_DIR
WORKDIR $APP_DIR
ADD . $APP_DIR
