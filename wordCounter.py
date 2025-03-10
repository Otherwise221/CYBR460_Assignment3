#this python code makes use of the external library Textblob
#the program reads a text file and outputs the three most common
# letters in the file


from textblob import TextBlob
from collections import Counter

sFile = "Sample_Text.txt"

def word_count(sFile):
    try:
        with open(sFile, "r", encoding='utf-8') as file:
            texts = file.read()

        words = TextBlob(texts)
        words = [word.lower() for word in words if word.isalpha()]
        word_counts = Counter(words)
        #output
        print("The 3 most common words in your text file are: ")
        
        for word, count in word_counts.most_common(3):
            print(f"{word}: {count}")
    except Exception as e:
        print(f"Error: {e}")

word_count(sFile)