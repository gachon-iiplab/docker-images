FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel

ARG GIT_URL
ARG FILENAME

RUN apt-get -y -qq update && \
    pip install numpy matplotlib librosa libsndfile1

RUN apt-get update
RUN apt-get upgrade -y --allow-unauthenticated
RUN apt-get install git -y

RUN git config --global --add safe.directory .
RUN git clone $GIT_URL
RUN git pull origin main

RUN echo $FILENAME
RUN ls -la

CMD [$FILENAME]
ENTRYPOINT ["python3"]
