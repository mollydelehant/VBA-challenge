# Modules
import os
import csv

# Prompt user for title lookup
book = input("What title are you looking for? ")

# Set path for file
csvpath = os.path.join("..", "Resources", "comic_books.csv")

# this is needed to prevent a variable not defined error produced below
# found = False

# Open the CSV
with open(csvpath, encoding='utf') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Loop through looking for the video
    for row in csvreader:
        if row[0] == book:
            print(row[0], row[8], row[9])
            found = True
    
    # The code below must be outside the for loop becasue we don't want 
    # it to print for every row not equal to 'book'
    # we want this to run only once and after every row has 
    # been checked.

    # This will result in an error that found is not declared yet
    # so we need to define this as false at the beginning of the code
    # REMEMBER to uncomment line 12
    if found == False:
        print("Sorry about this, we don't seem to have what you are looking for!")


#  Lastly, clean up the code a bit and it will look just like the solution.
