
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3.10-venv \
    python3-pip \
    git

# Create and activate a virtual environment, then install PyYAML
RUN python3.10 -m venv /venv
RUN /venv/bin/pip install --no-cache-dir PyYAML

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Use the venv Python in your entrypoint
ENTRYPOINT ["/entrypoint.sh"]










