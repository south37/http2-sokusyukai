FROM centos:7
MAINTAINER south37 <south37777@gmail.com>

RUN set -x && \
    echo "#bintray-tatsushid-h2o-rpm - packages by tatsushid from Bintray"                    > /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "[bintray-tatsushid-h2o-rpm]"                                                       >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "name=bintray-tatsushid-h2o-rpm"                                                    >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "#If your system is CentOS"                                                         >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "baseurl=https://dl.bintray.com/tatsushid/h2o-rpm/centos/\$releasever/\$basearch/"  >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "#If your system is Fedora"                                                         >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "#baseurl=https://dl.bintray.com/tatsushid/h2o-rpm/fedora/\$releasever/\$basearch/" >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "gpgcheck=0"                                                                        >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "repo_gpgcheck=0"                                                                   >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    echo "enabled=1"                                                                         >> /etc/yum.repos.d/bintray-tatsushid-h2o-rpm.repo && \
    yum install -y h2o && \
    yum install -y iproute

WORKDIR /etc/h2o
EXPOSE 80 443
CMD h2o
