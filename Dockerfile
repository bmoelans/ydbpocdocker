FROM yottadb/yottadb:latest-master
LABEL maintainer="Bart Moelans <bart.moelans@uantwerpen.be>"

##################################
# Define global environment vars #
##################################
ENV ydb_chset=M \
    ydb_lvnullsubs=0 \
    ydb_dist=/opt/yottadb/current

RUN echo "source ${ydb_dist}/ydb_env_set" >> /root/.bashrc


######################
# Install extra apps #
######################
RUN apt-get -y update \
	&& apt-get -y install vim python3-pip gcc libffi-dev


###########################
# Install python packages #
###########################

RUN pip install --break-system-packages yottadb


# by default yottadb entrypoint is ydb itself
ENTRYPOINT []
