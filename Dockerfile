FROM openshift/wildfly-81-centos7

# Maintainer details
MAINTAINER Stefano Picozzi <StefanoPicozzi@gmail.com>

#USER root
COPY wildfly /wildfly
#RUN chown -R jboss:jboss /opt/jboss/wildfly

#USER jboss

# Expose Ports
# EXPOSE 9990 9999 9090 8080
EXPOSE 8080

# Run DROOLS
CMD ["/wildfly/bin/standalone.sh", "-c", "standalone.xml", "-b", "0.0.0.0"]
