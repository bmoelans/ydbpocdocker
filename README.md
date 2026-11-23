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

## Import data

Download a zwr-file and place it in the shared folder. In this example we have `BCAT__stcv_.zwr` containing data in a global `^BCAT`

```
docker compose run --rm ydbdocker bash
cd /shared
mupip load BCAT__stcv_.zwr
```


## Run a simple script
Put it in /ydbdatabase/r and then do e.g:
```
docker compose run --rm ydbdocker ydb -run %World^zhello
```
or in interactive mode
```
docker compose run --rm ydbdocker ydb
YDB>d %World^zhello
YDB>h
```

Example of JSON export:
```
docker compose run --rm ydbdocker ydb -run %JsonEx^zhello
```

Example of export titles of c:stcv:3101797 to JSON:
```
YDB>d ^%JSWRITE("^BCAT(""stcv"",3101797,""ti"")","*","noglvname")
{"stcv":{"3101797":{"ti":{"1":"h^dut^1^0^oip^Aen-leydinge tot de salige vreese Godts^^doc"}}}}
{"stcv":{"3101797":{"ti":{"2":"tc^dut^1^0^oip^Aen-leydinghe tot de salighe vreese Godts^^ext"}}}}
```


## Run a Python script

You can run an example python script, based on https://docs.yottadb.com/ApplicationsManual/ydbpython.html#access-yottadb-from-the-command-line, as follows

```
docker compose run --rm ydbdocker bash

python3 /shared/pythonExamples/ex1.py 
# python3 /shared/pythonExamples/ex1.py 
500|g|6.5
500|g|3.5
500|g|2.5
```
