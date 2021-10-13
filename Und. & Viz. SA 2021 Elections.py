def Convert(string1):
    string = " ".join(string1.split())
    li = list(string.split(" "))
    return li

txt = """ What a DA government will do:
1.1 Ensure there is clean water and a sanitary environment for
every community.

"""
string_one = txt.replace("\n", " ")


list_one = Convert(string_one)
print(list_one)

#Count Words
import collections

counter = collections.Counter(list_one)
print(counter.most_common())
