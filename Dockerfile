FROM JAVA

MAINTAINER Andrij David <andrijdavid@xcentrik.online>

CMD export HOSTIP=$(ip route show | grep eth0 | awk '{print $9}')

RUN apt-get update && apt-get install -y \
  ant \
  maven \
  git \
  mercurial \
  subversion

