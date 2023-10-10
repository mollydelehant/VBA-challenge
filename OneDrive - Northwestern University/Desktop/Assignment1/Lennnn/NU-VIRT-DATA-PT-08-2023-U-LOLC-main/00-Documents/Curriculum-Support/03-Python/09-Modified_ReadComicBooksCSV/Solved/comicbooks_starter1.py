# Initial Goals
# 1.  Check that the input works when I run the file - code up to line 10
# 2.  Set csvpath and print out columns that you think you will need


# Modules
import os
import csv

# Prompt user for title lookup
book = input("What title are you looking for? ")

# Set path for file
csvpath = os.path.join("..", "Resources", "comic_books.csv")



# Open the CSV
# On line 27 of the csv, there is a special character - ie "Fábio"
# Because of this we need to provide an encoding value because 
# an error will occur otherwise.  If the file does not include
# these special characters then you often don't need to specify
# the encoding

# For windows users you could open the file in Notepad++ and look at the encoding
# menu to potentially get a guess of what the encoding is.
#
# Often it will be 'utf' so people guess a few common ecoding types to see
# if one works.  UTF includes english characters as well as characters that
# have accents
# 
# A better way may be to navigate to the file in terminal or gitbash and run:
# `file --exclude encoding filename_inserted_here.csv` 
# I think this will return the encoding

with open(csvpath, encoding='utf') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Loop through looking for the video
    for row in csvreader:
            print(row[0], row[8], row[9])
