#python image as a base
FROM python:3.9

#working directory
WORKDIR /wordCounter


COPY wordCounter.py .
COPY Sample_Text.txt .


RUN pip install Textblob
RUN python -c "import nltk; nltk.download('punkt')"

#running the python code
CMD ["python", "wordCounter.py"]
