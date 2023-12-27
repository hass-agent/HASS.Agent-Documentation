FROM squidfunk/mkdocs-material:9.4.11
RUN pip install mike

WORKDIR /app

COPY . /app

EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
