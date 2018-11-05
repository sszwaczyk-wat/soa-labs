# soa-labs

A Docker container for Service Oriented Architecture labs in Military University of Technology.

## Usage

In order to facilitate the use of this image, scripts are provided to run, attach, and stop the container. The scripts are available through the github repository (https://github.com/sszwaczyk/soa-labs.git) to get execute the command:

``` git clone https://github.com/sszwaczyk/soa-labs.git```

1. Run container:  
```./run.sh```  
or  
```xhost +```  
```docker run -tid --privileged --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name=soa-labs sszwaczyk/soa-labs```  

2. You can attach to running container using:  
```./attach.sh```  
or  
```docker exec -t -i soa-labs bash```  

3. Start netbeans when you attached to conatiner:  
```$ netbeans```  
or using script:  
```./netbeans.sh```  
