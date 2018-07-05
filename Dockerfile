FROM ubuntu


# python and relevant tools
RUN apt-get update && apt-get install -y \ 
    build-essential \
    python3 \
    python3-dev \
    python3-pip

# General dev tools
RUN apt-get install -y git
RUN apt-get install wget

# Latest versions of python tools via pip
RUN pip3 install --upgrade pip
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN pip3 install numpy pandas lxml requests bs4
RUN pip3 install tushare apscheduler
RUN pip3 install ta-lib
