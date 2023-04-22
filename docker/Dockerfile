FROM ubuntu:22.10


RUN apt-get update
RUN apt-get install git g++ cmake -y

COPY ./scripts/build.sh /build.sh


RUN git clone https://github.com/google/benchmark.git
RUN cd /benchmark
RUN mkdir build
RUN cd ./build
RUN cmake -DBENCHMARK_DOWNLOAD_DEPENDENCIES=on -DCMAKE_BUILD_TYPE=Release /benchmark
RUN make all -j4

ENTRYPOINT /build.sh
