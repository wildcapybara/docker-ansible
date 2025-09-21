FROM python:3-alpine
RUN apk update && apk add bash openssh sshpass git && pip install ansible python-gitlab
