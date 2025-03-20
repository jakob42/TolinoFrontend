FROM python:3.6

WORKDIR /usr/src/app

COPY . .
RUN sed -i 's/app, port=default_port/app, host="0.0.0.0", port=default_port/' server.py ; sed -i 's/pkg-resources==0.0.0//' requirements.txt ; pip install --no-cache-dir -r requirements.txt

CMD [ "python", "server.py", "/ebooks"  ]

