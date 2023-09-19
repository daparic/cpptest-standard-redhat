### Description

This Docker container image has [Parasoft C/C++test Standard](https://docs.parasoft.com/display/CPPTEST20231) tool installed 
under `/opt/parasoft/` folder:

- /opt/parasoft/cpptest-standard/cpptest/ (Standard)

### Build Image

```
git clone https://github.com/daparic/cpptest-standard-redhat
cd cpptest-standard-redhat/
docker build -t cpptest-standard-redhat .
```

### Run a container from image

```
docker run -it --rm cpptest-standard-redhat bash
ls -l /opt/parasoft/
```

### Additional Reference

- https://hub.docker.com/r/parasoft/cpptest
