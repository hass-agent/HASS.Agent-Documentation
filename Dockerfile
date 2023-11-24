FROM squidfunk/mkdocs-material:9.4.11

WORKDIR /app

COPY . /app

EXPOSE 8000

CMD ["mkdocs", "serve", "--livereload", "-a", "0.0.0.0:8000"]
