# YottaDB Python POC

A proof of concept for setting up YottaDB and making it accessible from Python.

This project is intended to explore the connection between a YottaDB database and Python code. It is an experimental starting point, not a production-ready setup.

## First run

Build docker and run
```
docker compose build
docker compose run --rm ydbdocker bash
```
Now you can play with Mumps, e.g.:

```
ydb

YDB>s msg="Hello World"
YDB>w msg
Hello World
YDB>h
```