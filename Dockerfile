FROM kakadadroid/python-talib


# Numpy
RUN pip install requests apscheduler lxml
RUN pip install pandas tushare
WORKDIR ~/quant_running
CMD python datacrawler.py

