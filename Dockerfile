#python image as a base
FROM python:3.9

#working directory
WORKDIR /wordCounter


COPY wordCounter.py .
COPY Sample_Text.txt .


RUN pip install Textblob

#running the python code
CMD ["python", "wordCounter.py"]
