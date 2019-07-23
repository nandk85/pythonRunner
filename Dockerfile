FROM python

RUN pip install PyYaml
RUN pip install python-gitlab jira gitpython bs4

# Disable Host Key verification.
RUN mkdir -p /root/.ssh
RUN echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config

WORKDIR /root/
CMD "/bin/bash"
