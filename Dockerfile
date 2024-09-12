FROM debian:latest

RUN apt update -y

RUN apt install unzip wget libgomp1 -y

RUN wget https://github.com/TabbyML/tabby/releases/latest/download/tabby_x86_64-manylinux2014-vulkan.zip

RUN unzip -j tabby_x86_64-manylinux2014-vulkan.zip

RUN chmod +x tabby llama-server 

ENTRYPOINT [ "/tabby" ]
