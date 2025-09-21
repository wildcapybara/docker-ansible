# Docker Ansible Image

A lightweight Docker image for running Ansible on Alpine Linux.

## Features

- Alpine-based, minimal footprint

## Pull the Image

```bash
docker pull ghcr.io/wildcapybara/docker-ansible:master
```

## Usage

Run Ansible playbooks with mounted inventory and playbooks:

```bash
docker run --rm -it \
  -v "$(pwd)/inventory:/etc/ansible/hosts:ro" \
  -v "$(pwd)/playbooks:/ansible/playbooks:ro" \
  ghcr.io/wildcapybara/docker-ansible:master \
  ansible-playbook playbooks/site.yml
```

Replace paths and playbook names as needed.

## Docker Compose Example

```yaml
services:
  ansible:
    image: ghcr.io/wildcapybara/docker-ansible:master
    volumes:
      - ./inventory:/etc/ansible/hosts:ro
      - ./playbooks:/ansible/playbooks:ro
    entrypoint: ansible-playbook
    command: playbooks/site.yml
```

```bash
docker-compose up
```
