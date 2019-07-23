FROM python

RUN pip install PyYaml
RUN pip install python-gitlab jira gitpython bs4

WORKDIR /root/
CMD "/bin/bash"
