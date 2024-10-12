FROM python:3.10

# Install git
RUN apt-get update && apt-get install -y git

# Install PyYAML (not necessary since we are using a Python image, but included for clarity)
RUN pip install PyYAML

# Copy the feed.py script into the container
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
