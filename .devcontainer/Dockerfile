FROM postgres:14.2

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    openssh-server \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
