# This could be written in multiple ways but here is one version

# Modules
import os
import csv

# Prompt user for title lookup
# search for Zorro to see multiple outputs
book = input("What title are you looking for? ")

# Set path for file
csvpath = os.path.join("..", "Resources", "comic_books.csv")

# this is needed to prevent a variable not defined error produced below
found = False

# Open the CSV
with open(csvpath, encoding='utf') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Add found files to list
    records_found = []
    # Loop through looking for the video
    for row in csvreader:
        if row[0] == book:
            # check terminal to see if expected result is achieved
            print(row[0], row[8], row[9])

            # Add three columns as a list to a list
            # This is one item being added = ['title', 'publisher', 'year']
            records_found.append([row[0], row[8], row[9]])
            found = True
    

    if found == False:
        print("Sorry about this, we don't seem to have what you are looking for!")
    else:
        # to understand what the w+ does below then see this article:
        # https://stackoverflow.com/questions/1466000/difference-between-modes-a-a-w-w-and-r-in-built-in-open-function
        # r = read, w=write, w+=write and create if needed, ..
        csvpath2 = os.path.join("..", "Resources", "comic_output.csv")
        with open(csvpath2, "w+") as csvfile:
            csv_writer = csv.writer(csvfile, delimiter=',')

            # loop through records and write each item to the csv
            # search for Zorro to see multiple outputs
            for record in records_found:
                csv_writer.writerow(record)


