# Module Notes  

## 01-Excel


## 02-VBA  

**VBA  Advice**:
* You can copy the Activity # Solution (instructor led activity) and use that has your starting point or you can create a new sheet by going to Excel File > New.. > Blank Workbook.
* You need to save all workbooks that use VBA as a .xlsm. The "m" stands for macro-enable workbook.
* To start coding, go to the Developer Tab and select the button that says Visual Basic. You will find in the left sidebar of the window that pops up the open workbooks. Find the workbook that you are working in and to start coding right click on the Folder that says Microsoft Excel Objects and select `Insert` > `Module`. A new folder and module called "Module#" opens and you can start coding on the right side. To run code then click on the green arrow button on the menu bar.
* Excel Data Types and Sizes:  https://docs.microsoft.com/en-us/office/vba/language/reference/user-interface-help/data-type-summary
* VBA Color Index: http://dmcritchie.mvps.org/excel/colors.htm
* Overflow means the value trying to be stored is not the right size - outside the range that is a acceptable. For example, Integer can be any value between -32,768 to 32,767. A value stored in a variable set as a Integer with a value of 40,000 will cause the overflow error. These ranges can be found in the link above. If an Integer is too small then try a Long and if a Long is too small then try LongLong.
* Important note when googling about VBA: VBA and VB.net (aka VB in the modern lingo) are not the same and have differences; even the data types are different. So when doing a search I would do it this way "Excel VBA and how to ______" or "Excel VBA and error message says ______"
* Note if VBA button is grayed out: If your cursor is inside a cell and blinking as in it is waiting for you to type something and you try to run a VBA subroutine, it won't do anything until you click out of that cell. Then you can access the VBA button.
* To save your VBA code as a separate file, open the VBA Editor.  Select the module that holds your code.  Go to the File menu then select Export File and change the Save as Type to a Basic Files, .bas or add any extension to the end of the file name like .txt.  The code just needs to be text.  You could also copy your code to a clipboard and paste it into a simple text editor.  The file that is saved just needs to be a text file like described above.  A word document is not a simple text document so don't paste your code into there. 
* If you get a message when opening a workbook after downloading it via the browser and that message doesn't allow you to open the excel file then try moving those files to your desktop.  On PC's, the download folder might be a restricted folder and could cause this problem but once it is in a general location like your Desktop then you might not get any messages.

**More VBA Resources**
In addition to this post about VBA and the VBA HW which should be helpful, I also added a folder that shows an expanded version of Day3 Activity 6 in the 00-Documents > Curriculum-Support > 02-VBA folder.  If you open the credit_charges.xlsm file then you will see that it contains about 12 sub modules with each one becoming more advanced and more complete - So if you read routine cards1 through cards9 then you will see how the activity can be written in parts and tested.  cards10 and cards11 show how to use this example and loop through spreadsheets.
Not sure why I named the sub routines 'cards'  but there is no special meaning to that name - just a random choice at the time I wrote this.  I should have given it a more descriptive name.
Sometimes I use this code to help explain conceptual issues or planning difficulties when people see me in office hours.



## 03-Python  

#### Goals Not Directly Python
1.  Basics of Terminal so you can navigate to python files located in folders (Day1)
1.  Update repository files from command line (Day 3)
1.  Clone GitHub folder and add files and push content back to GitHub.  Similar to Homework process (Day3)



#### Goals of Each Day  
##### Day 1:
1.  Create conda environment and activate it  
1.  Run python files from terminal using `python <filename>`
1.  Setting Variables and using the print statement.  Note:  f-strings are the most widely used method i.e. `print(f"Text like you want to see it and add variable content with curly brackets {variable}")`
1.  Prompts using `input_response = input("Message goes here about what to type: ")`
1.  Operators (ie =, ==, !=, etc):  Best summary for this is [here](https://www.w3schools.com/python/python_operators.asp).
1.  Flow Control:  if/elif/else Structure (aka Flow Control).  See this reference [here](https://docs.python.org/3/tutorial/controlflow.html#match-statements)
1.  Data Structures - List (aka [ ]  ) versus Tuple (aka ( )  ).  We will add to this sets and dictionaries and these are the 4 data structures in python. Here is a good [document](https://docs.python.org/3/tutorial/datastructures.html#).
1.  Loops - for/while

##### Day 2:  
1.  Loop Practice
1.  Reading/Writing Files using `with open` and `csv.reader` and `csv.writer`
1.  Zipping Data 
1.  Reading, Storing, and Manipulating Data - Activity 12 is Similar to Homework.
1.  Functions that only print message to console (not very helpful but an introduction)

##### Day 3:
1.  Dictionaries
1.  Making lists from lists (list comprehensions)
1.  Functions that use a return (very helpful)
1.  Examples of calculations and multiple concepts combined.


### Common Issues
#### Running Files
1.  To run a python file, you need to run it from terminal inside the folder where the .py file is located.  So to run `main.py` based on the above diagram for `PyPoll` then I would need to be in the the following folder `python_challenge/PyPoll`.  I could use `cd` in termainl to get to this folder or I could right click on PyPoll and open the terminal.  Now, I could run `python main.py` and it should run.
1.  If a module (aka `import os`) is not found then the error message will provide a message about module XX not found.  In the first week of python we are not using any non-standard, pre-installed modules.  The three modules we used (os, csv, random) should not come back with any errors.
1.  Python is very critical about spacing.  Whenever you use a for/while/if then you must indent with a tab and anything that is part of that loop must be spaced the same way.  So all operations inside a for loop need tabbed in once.  If we align code directly under the for loop without the tab then it would not be inside the for loop - it acts as if it occurs after the for loop is complete.

#### List Operations
1.  Here are common functions that can be used on lists:  sorted(), sum(), max(), min(), len().
1.  Some less used functions for lists are:
  *  return objects:  reversed(), filter(), map()
  *  only work on lists of booleans:  all(), any()
  *  not sure I have ever used these on lists:  slice(), next().  
     *  There are easier ways than using slice(), next() with lists.
* Here is where I found the commands:  https://www.w3schools.com/python/python_ref_functions.asp.  I am searching this list for commands that are iterable, or act on objects or directly say it is used on lists.  Click the function to see a simple example.
