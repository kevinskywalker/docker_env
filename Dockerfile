FROM centos/python-35-centos7
RUN yum -y install gcc
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN pip install numpy pandas lxml requests bs4
RUN pip install tushare apscheduler
RUN pip install ta-lib

