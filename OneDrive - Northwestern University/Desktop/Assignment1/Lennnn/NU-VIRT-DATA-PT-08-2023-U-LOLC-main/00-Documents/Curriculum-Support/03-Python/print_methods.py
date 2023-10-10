import os

# Dictionary defined
election_results = {'mo': 3, 'jessica': 2, 'erin': 1, 'angelica': 1}


# ------------------------------------------------------
# Method 1:
# 1.  access/create file
# 2.  define text
# 3.  print to terminal and write to file separately
# ------------------------------------------------------
print("\n\n" + "-----"*10)
print(f"Start of Method 1\n")

# os.path needed if file is not located in same folder as the python script
path1 = os.path.join("method1.txt")
# if writing to the same folder as .py then this works also, must use quotes
path1 = "method1.txt"

# we assign the document the name file but it could be anything
with open(path1, "w+") as file:
      # make string
    message1 = f"Here are the results\nof the election"
    print(message1)
    file.write(f"{message1}\n")

      # example of adding content with a for loop; adds to previous printed content
    for key, value in election_results.items():
        message2 = f"Candidate {key} received {value} votes"
        print(message2)
        file.write(f"{message2}\n")


# ------------------------------------------------------
# Method 2:
# 1.  access/create file
# 2.  define text, combine multiple lines of text in one message
# Note:  '\n' starts a newline
# 3.  print to terminal and write to file separately
# ------------------------------------------------------
print("\n\n" + "-----"*10)
print(f"Start of Method 2\n")

path2 = os.path.join("method2.txt")
path2 = "method2.txt"

with open(path2, "w+") as file:
      # Message that combines multiple printed lines
    message1 = (
    f"Here are the results\n"
    f"of the election"
    )
    print(message1)
    file.write(f"{message1}\n")

      # looping example, same as above
    for key, value in election_results.items():
        message2 = f"Candidate {key} received {value} votes"
        print(message2)
        file.write(f"{message2}\n")


# ------------------------------------------------------
# Method 3:
# 1.  access/create file
# 2.  define text, specifies output location of print statement
# Note:  '\n' starts a newline
# 3.  writes only to file
# ------------------------------------------------------
print("\n\n" + "-----"*10)
print(f"Start of Method 3\n")
print(f"No other terminal output; writes to file only")

path3 = os.path.join("method3.txt")
path3 = "method3.txt"
with open(path3, "w+") as file:
    print(f"Here are the results\nof the election", file=file)
    for key, value in election_results.items():
        message2 = f"Candidate {key} received {value} votes"
        print(message2, file = file)


# ------------------------------------------------------
# Method 4:
# 1.  create function that takes in string and file object and prints to console and file
# 2.  access/create file
# 2.  define text, specifies output location of print statement
# Note:  '\n' starts a newline
# 3.  writes only to file separately
# ------------------------------------------------------
print("\n\n" + "-----"*10)
print(f"Start of Method 4\n")

# created function that prints to terminal and to a text file
def message(input, f):
    print(input)
    print(input, file=f)

# setup file location
path4 = os.path.join("method4.txt")
path4 = "method4.txt"

# Different way of opening file; could us other methods above
file = open(path4, "w+")

# Call function to print to both
message(f"Here are the results\nof the election", file)

for key, value in election_results.items():
    msg1 = f"Candidate {key} received {value} votes"
    message(msg1, file)
file.close()


# ------------------------------------------------------
# Method 3 Add-on:
# 1.  Method3 only wrote a file but here is an easy trick to get same content to console
# 2.  open text file generated in Method 3 (or any text file)
# 3.  print content to console
# ------------------------------------------------------
print("\n\n" + "-----"*10)
print(f"Start of Method 3 Alternate Console Print\n")

# print to screen from text file
path3 = os.path.join("method3.txt")
path3 = "method3.txt"

with open(path3, 'r') as file:
    print(file.read())