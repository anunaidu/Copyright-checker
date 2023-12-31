FROM python:3.10-alpine

LABEL "com.github.actions.name" = "Copyright Action"
LABEL "com.github.actions.description" = "Automatically inserts copyright to the configured directories in a repository"
LABEL "com.github.actions.icon" = "edit"
LABEL "com.github.actions.color" = "gray-dark"

LABEL "repository" = "https://github.com/anunaidu/Copyright-checker"
LABEL "homepage" = "https://github.com/anunaidu/Copyright-checker"
LABEL maintainer="anu.a <mahi.naidu770@gmail.com>"
LABEL version="1.0.0"

# Creates work dir
WORKDIR /app

# Copy python script to the container folder app
COPY copyright_insert.py /app/copyright_insert.py

ENTRYPOINT ["python", "/app/copyright_insert.py"]
