FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

# Check Python and Pip versions
RUN python3 --version && pip3 --version

# Install PyYAML
RUN pip3 install PyYAML

# Copy the feed.py script into the container
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
