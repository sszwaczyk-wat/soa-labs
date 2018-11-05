FROM ubuntu:16.04
MAINTAINER Sebastian Szwaczyk "sszwaczyk@gmail.com"

#Install java and some utils
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean

RUN apt-get -y install sudo
RUN apt-get -y install apt-utils
RUN apt-get -y install net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y gedit
RUN apt-get install -y firefox

#Install netbans with glassfish
RUN wget https://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-javaee-linux.sh -O /tmp/netbeans.sh -q && \
    chmod +x /tmp/netbeans.sh && \
    echo 'Installing netbeans' && \
    /tmp/netbeans.sh --silent && \
    rm -rf /tmp/*

#Set JDK for netbeans
RUN sed -i 's/usr/usr\/lib\/jvm\/java-8-oracle/g' /usr/local/netbeans-8.2/etc/netbeans.conf

#Symlink to netbeans
RUN ln -s /usr/local/netbeans-8.2/bin/netbeans /usr/local/bin/netbeans

#Install git
RUN apt-get -y install git



