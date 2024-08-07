FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel

RUN apt-get -y -qq update && \
    pip install numpy matplotlib

RUN apt-get update
RUN apt-get upgrade -y --allow-unauthenticated


ARG FILENAME
ENV FILE_NAME ${FILENAME}

COPY . .

CMD python3 $FILE_NAME
