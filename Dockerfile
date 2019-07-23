FROM python

RUN pip install PyYaml lxml
RUN pip install python-gitlab jira gitpython python3-bs4 beautifulsoup4 html5lib

# Disable Host Key verification.
RUN mkdir -p /root/.ssh
RUN echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config

WORKDIR /root/
CMD "/bin/bash"
