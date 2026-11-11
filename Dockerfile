FROM yottadb/yottadb:latest-master
LABEL maintainer="Bart Moelans <bart.moelans@uantwerpen.be>"

##################################
# Define global environment vars #
##################################
ENV ydb_chset=M \
    ydb_lvnullsubs=0
