FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y locales git wget curl ansible unzip python-is-python3 python3-venv && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash && \
    curl -sL https://istio.io/downloadIstioctl | sh - && \
    echo "PATH=$PATH:$HOME/.istioctl/bin" >> $HOME/.bashrc && \
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
    rm -rf awscli-bundle*