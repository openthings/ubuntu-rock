#Name:		openthings/ubuntu-rock
#Base: 		aarch64/ubuntu:xenial
#Source:	github.com/openthings/ubuntu-rock

FROM openthings/ubuntu-root:ARM64
MAINTAINER openthings <openthings@163.com>

# Install Updated packages.
RUN apt-get update && apt-get install -y --no-install-recommends \
	g++ gcc libc6-dev libltdl7 golang make \
	wget curl bison ed gawk git-core \
	&& apt-get upgrade -y

# Define default command
CMD ["bash"]

