FROM centos/python-35-centos7
RUN sudo yum -y install gcc
RUN sudo wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN sudo pip install numpy pandas lxml requests bs4
RUN sudo pip install tushare apscheduler
RUN sudo pip install ta-lib

