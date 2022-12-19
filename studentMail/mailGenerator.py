import re

open("output.txt", "w").close() # clears output file

with open("input.txt", "r") as file:
    data = file.readlines() # input as list
    for line in data:
        matNR = line.rstrip() # remove \n
        matNR = re.sub("[^0-9]", "", matNR) # get only numbers
        mail = f"K{matNR}@students.jku.at; " # transform to mail
        with open("output.txt", "a") as out:
            out.write(mail)