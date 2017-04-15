FROM microsoft/aspnetcore-build
MAINTAINER nest.yt

# set up the packages
RUN apt-get update -y && \
    apt-get install -y sudo git jq && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    mkdir /usr/local/tree && \
    git clone https://github.com/inkton/nest.git /usr/local/tree/nest
    
WORKDIR "/var/app"
