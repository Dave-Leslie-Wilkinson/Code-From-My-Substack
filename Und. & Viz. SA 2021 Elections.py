#Divide Paragraph Into individual Words
print("List of Words:")
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
print("#################")
print("Counted Words:")
import collections

counter = collections.Counter(list_one)
print(counter.most_common())

#Count Specific Word
print("#################")
print("Specific Word:")
word_search = ["road", "roads", "Roads", "water", "Water", "infrastructure", "Infrastructure", "maintenance", "Maintenance", "sanitation", "Sanitation", "waste", "Waste", "energy", "Energy", "electricity", 
"Electricity", "skills", "skill", "Skills", "Skill", "training", "Training", "education", "Education", "child", "Child", "childhood", "Childhood", "crime", "Crime", 
"jobs", "job", "Job", "Jobs", "employment", "Employment", "corruption", "Corruption"]
for word in word_search:
  occurrences = string_one.count(word)
  print(word, occurrences)
