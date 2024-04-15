FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel

RUN apt-get -y -qq update && \
    pip install numpy matplotlib librosa libsndfile1

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y

RUN git clone $GIT_PATH

ENTRYPOINT ['python', $FILE_NAME]
