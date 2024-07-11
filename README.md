# docker-images
이 레퍼지토리는 모델을 동작시킬 가상환경에 대한 필요 DockerFile 들을 모아두는 저장소

## how to make Dockerfile?

```Dockerfile
FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel -> base 가 되는 pytorch docker image, 사용하고자하는 쿠다 버전을 사용, 다만 서버 버전과 동일해야함(Cuda 12)

RUN apt-get -y -qq update && \
    pip install numpy matplotlib librosa libsndfile1 -> 사용하고자하는 가상환경의 package 리스트를 적는다.
```

### base image 로 사용할 pytorch 버전 image 태그 리스트
https://hub.docker.com/r/pytorch/pytorch/tags


## Nas 랑 연결할 경우 command
#### mount command :
#### sudo mount -t cifs -o credentials=~/.smbcredentials,uid=1000,gid=1000,iocharset=utf8 //192.9.203.53/iiplab /home/iiplab/nas_iiplab


