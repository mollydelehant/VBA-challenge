# Learning about dictionaries  
# Parts of the notebook are commented out.  You should run the sections between **** one at a time.  


# given a list of names where each name represents a voter's candidate selection 
# in this example, mo got 3 votes
votes = ['mo', 'mo', 'jessica', 'erin', 'jessica', 'mo', 'taylor']

# initialize empty dictionary - we will store candidate information (how many votes they received) in this dictionary
election_results = {}

# add item to dictionary - the key is 'mo' and the value is 1
election_results["mo"] = 1
print(f'Here is the first vote added to dictiony: "mo" has {election_results["mo"]} votes')

# add item to dictionary using the same key as before
election_results["mo"] = 32
print(f'Here is "mo" updated: "mo" has {election_results["mo"]} votes')



# what happens when you run this next section? Make a prediction then run the entire section between the ***
# #***************************************************************************
# try:  
#     print(f'What happens if we search for a name not in the dictionary?  {election_results["jim"]}')
# except: 
#     print(f'We get an error if the key is not found in the dictionary, i.e. election_results["jim"]')
# #***************************************************************************
# Explanation
# here is an example of a try/except statement - if an error occurs in the try then it executes the except
# this is different than an `if/else` statement because the if would recognize the error and the code would stop at the error


# What does .keys() do?
# #***************************************************************************
print(f"what does this command do?  {election_results.keys()}")
# #***************************************************************************



# why does this fail?  when would it work?
# #***************************************************************************
# for vote in votes:
#     election_results[vote] = election_results[vote] + 1
# #***************************************************************************


# what if we run it now with this extra line added?  What is the difference?
# #***************************************************************************
# election_results['mo'] = 1
# for vote in votes:
#     election_results[vote] = election_results[vote] + 1
# #***************************************************************************



# Early Draft of the Code
# #***************************************************************************
# # grab one vote at a time
# for vote in votes:
#     # check if that votes (key) is in the dictionary
#     # if true then add one to the existing key
#     if vote in election_results.keys():
#         election_results[vote] = election_results[vote] + 1
#     # if false then add key to dictionary with a value of 1
#     else:
#         election_results[vote] = 1

# print(election_results)
# #***************************************************************************


# Intermediate Draft of the Code
# #***************************************************************************
# # grab one vote at a time
# for vote in votes:
#     # check if that votes (key) is in the dictionary
#     # if true then add one to the existing key
#     if vote in election_results.keys():
#         election_results[vote] = election_results[vote] + 1
#     # if false then add key to dictionary with a value of 1
#     else:
#         election_results[vote] = 1

# print(election_results)
# #***************************************************************************


# Final Draft of the Code
# #***************************************************************************
# # grab one vote at a time
# for vote in votes:
#     # check if that votes (key) is in the dictionary
#     # if true then add one to the existing key
#     if vote in election_results.keys():
#         election_results[vote] += 1
#     # if false then add key to dictionary with a value of 1
#     else:
#         election_results[vote] = 1

# print(election_results)
# #***************************************************************************



# Refactoring Code (means improving code without changing the functionality of it)
# Note1:  I don't actually need to include .keys() when doing for loops and ifs - in python it defaults to looking at the keys
# Note2:  I used .keys() just to simplify it since all past loops have been through list-like structures
# Note2:  To get both keys and values you would use election_results.items() - this is typically used when looping through a dictionary

# #***************************************************************************
# for vote in votes:
    
#     if vote in election_results:
#         election_results[vote] += 1
#     else:
#         election_results[vote] = 1

# print(election_results)
# #***************************************************************************

# Alternate Way / Maybe Advanced Way - this is probably more python specific than general programming
# there are times when using .get() can be helpful in handling issues when keys are not found but I don't think this is necessarily better.
# to me this is less readable
# First google `python dictionary get` so you know what the syntax means:

# #***************************************************************************
# for vote in votes:

#     total = election_results.get(vote, 0) + 1
#     election_results[vote] = total

# print(election_results)
# #***************************************************************************