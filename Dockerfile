FROM registry.access.redhat.com/ubi8/ubi:latest
MAINTAINER dexter

RUN groupadd -r parasoft && useradd -m -r -g parasoft parasoft && \
    yum update && yum install -y gcc gcc-c++ cmake autoconf && \
    mkdir /opt/parasoft && chown parasoft:parasoft /opt/parasoft/

USER parasoft
COPY --chown=parasoft:parasoft stan_chunks /tmp/stan_chunks

RUN mkdir /opt/parasoft/cpptest-standard && \
    cat /tmp/stan_chunks/* > /tmp/cpptest-stan.tar.gz && \
    tar xvzpf /tmp/cpptest-stan.tar.gz -C /opt/parasoft/cpptest-standard && \
    rm -rf /tmp/cpptest-stan.tar.gz /tmp/stan_chunks/
