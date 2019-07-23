FROM python

RUN pip install PyYaml
RUN pip install python-gitlab jira gitpython bs4

# Disable Host Key verification.
RUN mkdir -p /root/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n" > /root/.ssh/config

WORKDIR /root/
CMD "/bin/bash"
