#Divide Paragraph Into individual Words
print("Words:")
def Convert(string1):
    string = " ".join(string1.split())
    li = list(string.split(" "))
    return li

txt = """ paragraph
example.
"""
string_one = txt.replace("\n", " ")


list_one = Convert(string_one)
print(list_one)


#Count Words
print("#################")
print("Counted Words:")
import collections

counter = collections.Counter(list_one)
print(counter.most_common())

#Count Specific Word
print("Specific Word:")
word = "paragraph"
occurrences = string_one.count(word)
print('Number of occurrences of the word', word, occurrences)
