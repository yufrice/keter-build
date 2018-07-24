FROM haskell:8
LABEL yufrice <yufyufrice@gmail.com>

WORKDIR /root
RUN stack update
RUN stack setup --resolver=lts-9.21
RUN stack install keter

RUN ["/bin/bash", "-c",\
	"mkdir -p /opt/keter/{bin,etc,incoming}"]
RUN cp /root/.local/bin/keter /opt/keter/bin

WORKDIR /
