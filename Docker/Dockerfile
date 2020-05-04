FROM jenkins/jenkins:latest

# Load Plugins
COPY config/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Add configs
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/casc/casc.yml 
COPY config/casc.yml ${CASC_JENKINS_CONFIG}
# Workaround for AuthorizeProject not supporting CASC (see casc.yml)
COPY config/jenkins.security.QueueItemAuthenticatorConfiguration.xml /var/jenkins_home/jenkins.security.QueueItemAuthenticatorConfiguration.xml

# Secrets
ENV GH_PAT=GH_PAT GH_CLIENT_SECRET=GH_CLIENT_SECRET GH_CLIENT_ID=GH_CLIENT_ID

# Skip setup wizard
RUN echo 2.7.1 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
RUN echo 2.7.1 > /usr/share/jenkins/ref/jenkins.install.InstallUtil.lastExecVersion