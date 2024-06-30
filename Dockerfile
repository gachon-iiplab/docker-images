FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel

RUN apt-get -y -qq update && \
    pip install numpy matplotlib librosa libsndfile1

RUN apt-get update
RUN apt-get upgrade -y --allow-unauthenticated


ARG FILENAME
ENV FILE_NAME ${FILENAME}

ONBUILD RUN ls -la

COPY . .

RUN echo ${FILE_NAME}
RUN ls -la

CMD python3 $FILE_NAME
