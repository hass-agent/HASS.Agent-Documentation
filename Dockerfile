FROM squidfunk/mkdocs-material:9.6.14

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt


EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
