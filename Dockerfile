FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/linuxserver/weixin:latest

USER root

RUN curl -L -o /tmp/wechat.deb https://dldir1v6.qq.com/weixin/Universal/Linux/WeChatLinux_x86_64.deb \
    && dpkg -i /tmp/wechat.deb \
    && apt-get install -f -y \
    && rm -f /tmp/wechat.deb
