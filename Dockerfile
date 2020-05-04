# This iteration is about moving to Docker containers for testing.
# Breaking DRY with multiple Docker files until we answer:
# How do I dynamically pass version to FROM for build contianer?

FROM python:3.8.2

RUN  pip install --upgrade pip &&  \
     pip install poetry && \
     mkdir /mnt/repo

COPY . /mnt/repo/

WORKDIR /mnt/repo

RUN poetry install
