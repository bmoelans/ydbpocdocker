FROM yottadb/yottadb:latest-master
LABEL maintainer="Bart Moelans <bart.moelans@uantwerpen.be>"

##################################
# Define global environment vars #
##################################
ENV ydb_chset=M \
    ydb_lvnullsubs=0 \
    ydb_dist=/opt/yottadb/current

RUN echo "source ${ydb_dist}/ydb_env_set" >> /root/.bashrc

# by default yottadb entrypoint is ydb itself
ENTRYPOINT []
