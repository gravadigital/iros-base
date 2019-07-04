FROM python:3.6-slim-stretch

RUN apt-get -y update
RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    software-properties-common \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

RUN pip3 install dlib
RUN pip3 install numpy
RUN pip3 install pymongo
RUN pip3 install youtube-dl -U
RUN pip3 install face_recognition
RUN pip3 install scipy
RUN pip3 install opencv-python
RUN pip3 install python-dotenv
RUN pip3 install bottle
RUN pip3 install requests
RUN apt  install libopencv-dev -y
CMD bash
