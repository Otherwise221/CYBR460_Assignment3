#python image as a base
FROM python:3.9

#working directory
WORKDIR /wordCounter


COPY wordCounter.py .
COPY Sample_Text.txt .


RUN pip install nltk
RUN python -c "import nltk; nltk.download('punkt') ; nltk.data.find('tokenizers/punkt')"

#running the python code
CMD ["python", "word_counter.py", "Sample_Text.txt"]
