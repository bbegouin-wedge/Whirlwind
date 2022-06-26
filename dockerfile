# pull official base image
FROM ubuntu:22.10

CMD mkdir /home
CMD mkdir /home/whirlwind/toolchain
CMD mkdir /home/whirlwind/Front
CMD mkdir /home/whirlwind/Back

# set work directory
WORKDIR /home/whirlwind/Back

RUN apt-get update
# build tools
RUN apt-get install -y ninja-build clang gcc gdb gdbserver g++ cmake git

# utils tools
RUN apt-get install -y curl zip unzip pkg-config tar vim

# dev libs
RUN apt-get install -y libpq-dev libmariadb-dev build-essential libsqlite3-dev libfmt-dev

# google test lib
apt-get install libgtest-dev

ENV CC clang
ENV CXX clang++

RUN git clone https://github.com/Microsoft/vcpkg.git /opt/vcpkg
ENV VCPKG_FORCE_SYSTEM_BINARIES 1
RUN cd /opt/vcpkg && ./bootstrap-vcpkg.sh -useSystemBinaries && ./vcpkg integrate install

RUN /opt/vcpkg/vcpkg install sqlite3