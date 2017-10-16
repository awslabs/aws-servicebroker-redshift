FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 python-netaddr && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions
COPY bin/16to62 /usr/bin/16to62
COPY bin/getcidrs /usr/bin/getcidrs
COPY bin/getazs /usr/bin/getazs

LABEL "com.redhat.apb.spec"=\

USER apb
