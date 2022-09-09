#!/bin/bash

# ensure the build directory isn't empty
if [ "$(ls)" == "" ]; then
    echo "No files were found! You need to create a volume over this contianer '~/build' directory."
    exit 1
fi

go mod tidy || exit 1
go mod download || exit 1
go build -o main || exit 1