FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel

RUN apt-get -y -qq update && \
    pip install numpy matplotlib librosa libsndfile1

RUN apt-get update
RUN apt-get upgrade -y --allow-unauthenticated


ARG FILENAME
ENV FILE_NAME ${FILE_NAME}

ONBUILD RUN ls -la

COPY . .

RUN echo $FILENAME
RUN ls -la

CMD [ ${FILENAME} ]
ENTRYPOINT ["python3"]
