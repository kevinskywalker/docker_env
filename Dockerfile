FROM ubuntu


# python and relevant tools
RUN apt-get update && apt-get install -y \ 
    build-essential \
    python3 \
    python \
    python-dev \
    python-pip

# General dev tools
RUN apt-get install -y git
RUN apt-get install wget

# Latest versions of python tools via pip
RUN pip install --upgrade pip
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN pip install numpy pandas lxml requests bs4
RUN pip install tushare apscheduler
RUN pip install ta-lib
