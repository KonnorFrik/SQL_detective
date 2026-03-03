#! /bin/bash

# TODO: use volume for release for save user-progress

docker run \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_DB=detective \
    --name postgres \
    -p "5432:5432" \
    -d \
    postgres
