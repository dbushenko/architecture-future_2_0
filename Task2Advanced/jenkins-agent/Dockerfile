FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk curl wget unzip gnupg jq git && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g 132 jenkins && \
    useradd -d /home/jenkins -s /bin/bash -u 124 -g 132 -m jenkins

RUN mkdir -p /home/jenkins/bin

COPY terraform /home/jenkins/bin/terraform

RUN chmod +x /home/jenkins/bin/terraform && \
    chown jenkins:jenkins /home/jenkins/bin/terraform

ENV YC_TOKEN=t...............................w
ENV YC_CLOUD_ID=b1gad33633iogistdodb
ENV YC_FOLDER_ID=b1g33g192f7uskc2u526

ENV HOME=/home/jenkins
WORKDIR /home/jenkins

ENV PATH="/home/jenkins/bin:${PATH}"

RUN chown -R jenkins:jenkins /home/jenkins

RUN chmod 755 /home/jenkins/bin/terraform

RUN echo 'provider_installation {' > /home/jenkins/.terraformrc && \
    echo '  network_mirror {' >> /home/jenkins/.terraformrc && \
    echo '    url = "https://terraform-mirror.yandexcloud.net/"' >> /home/jenkins/.terraformrc && \
    echo '    include = ["registry.terraform.io/*/*"]' >> /home/jenkins/.terraformrc && \
    echo '  }' >> /home/jenkins/.terraformrc && \
    echo '  direct {' >> /home/jenkins/.terraformrc && \
    echo '    exclude = ["registry.terraform.io/*/*"]' >> /home/jenkins/.terraformrc && \
    echo '  }' >> /home/jenkins/.terraformrc && \
    echo '}' >> /home/jenkins/.terraformrc

RUN chmod 644 /home/jenkins/.terraformrc && \
    chown jenkins:jenkins /home/jenkins/.terraformrc

USER jenkins