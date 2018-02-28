FROM ansibleplaybookbundle/apb-base:release-1.0
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 python-netaddr && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions
COPY bin/16to62 /usr/bin/16to62
COPY bin/getcidrs /usr/bin/getcidrs
COPY bin/getazs /usr/bin/getazs
RUN chmod +x /usr/bin/16to62
RUN chmod +x /usr/bin/getcidrs
RUN chmod +x /usr/bin/getazs

LABEL "com.redhat.apb.spec"=\

USER apb
