FROM jboss/wildfly:9.0.0.Final
USER root
RUN yum install -y iproute
ADD customization /opt/jboss/wildfly/customization/
ADD modules /opt/jboss/wildfly/modules/
RUN /opt/jboss/wildfly/customization/execute.sh
RUN rm -rf /opt/jboss/wildfly/standalone/configuration/standalone_xml_history
