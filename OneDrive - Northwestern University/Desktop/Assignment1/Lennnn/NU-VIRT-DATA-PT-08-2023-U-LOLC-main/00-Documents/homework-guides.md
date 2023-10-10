# Homework Guide  


## 01-Excel  
*  No additional clarifications needed.  

<br>

## 02-VBA  

**IMPORTANT VBA HW Advice**: Make sure you save your excel files as .xlsm (macro enabled).  You do this by going to the Save As menu and selecting the correct workbook type.  If you keep the workbook as a .xlsx then as soon as you close Excel the code you wrote will be lost. 
**VBA HW Advice**:  I believe the VBA homework says that you should not submit your Excel file. I think the Excel file is actually close to the github file size limit of 100MB.  You can put multiple 99MB files in a repo but will get an error if you attempt even one 100MB file.   The only thing the graders will need is a text document of the code that you wrote - the graders have a copy of the original spreadsheet. You can copy the code into a simple text editor like Wordpad or Notepad and save it as a .txt or .bas or .vbs. Do not save it in Word document.  An option of how to export the file as a .bas is listed above. 
**RUNNING YOUR VBA Code**: Follow the instructions for the HW. Use the Test Data (alphabetical_testing.xlsx) to make your draft of code. It may take up to 5 minutes for your code to complete execution. When you have it running well then try running the same code on the larger Excel File (called Multiple_Year_Stock_Data.xlsx).
**HW Confusing Parts**:  
* `Yearly Change`: Means getting the stock opening price on the first day in early January for that year and subtracting that value from the closing price on the last day in late December of that year. Ie F252 - C2  
* `Percent Change`: Means taking the Yearly Change described above and dividing it by the opening price. %Change = (F252 - C2)/C2  (shows a fraction but you can decide the way to show it as a percent)
* `Total Stock Volume`: This should be phrased total stock traded. That is what the <vol> column represents - trading volume. You need to sum the volume column starting at the beginning of the year through the end of the year. Ie. G2 through G252.  
* Create a Small Summary table showing the Ticker and value for the Greatest % Increase (Max value in Column Percent Change) and the value for the Greatest Decrease (Min value in Column Percent Change) and the Greatest Total Volume (Max value in Column Total Stock Volume.  
*  Use VBA to format your spreadsheet.  
* You will just need to run your code on each sheet. You are not creating any new sheets but are just summarizing the data in columns I, J, K, L on each sheet. By clicking on a sheet and then running your macro, it should run that macro on that page. As part of the bonus it asks you to use a loop to go through all the sheets. Examples of this can be found in Day 3 Activity 7 and 8.
* All this must be done through VBA and not using the excel menus. You should also be using for loops, ifs, and VBA functions to accomplish this. If you know a command for summing a column then do not use this but instead use the for loops that we have been practicing in class.
* I would even code the Column header names in ie: Cells(1,7).Value = "Ticker Name"
* The code should be able to run on a spreadsheet that only has the raw data and generate everything to the right of the data.
* **Start Simple and Build**: Get your code to work on one sheet first of the smaller dataset. If your code has an error then it will stop populating the spreadsheet at the location where it found the error. So if your code has an error box popup; go to that sheet and check to see where the code stopped populating your new summary table.  What you are solving is why did it work for the other rows but not for this row? Then build your code to adapt to that problem.
* **Resources**: Remember that you can Request Help in Slack, Request a Tutor, Come to Office Hours, Post for Help in Ask the Class, and/or Ask class members to be part of a study group. Just put the members of your group in the comments at the top of your script so we can understand why parts of your scripts might be similar. You may copy as much of the class activities as you like. You can use google/stack overflow, etc as aids to solve specific problems. Using small code snippets from these resources does not require a citation.

<br>

## 03-Python  

### Homework Setup:  

#### Extra Resources
* Additional examples can be found here [LINK](./Curriculum-Support/03-Python/).  This folder has examples of print methods, dictionaries, and and expanded Day2 Act 9 example.   
* Some notes about the Python Unit can be found here [LINK](./module-notes.md)
#### Create Repo and Clone
1.  Make repo (Day 3 Topic):
    *  Go to GitHub and click on the Cat logo in the upper left corner.  Find the Green button that says `New`
    *  On the Create a new repository page.  Fill in the repo name, give it a short description (can be changed later), select Public, select Add a README, select Add .gitignore, in the new dropdown select Python.
    * Click `Create repository`
1.  You should now see your new repo and it will only have an empty README.md file and a .gitignore file.  Lets add these to your desktop.
1.  Clone repo:  
    *  On the repo main page, click the green `Code` button.
    *  There are three link options (HTTPS, SSH, GithubCLI), make sure to click the SSH tab.  The link will then look like `git@github.com:<username>/<repo name>.git`.
    *  Copy the link and go to your desktop and right click and choose 'Git Bash Here' or 'Open terminal in Folder'.  
    *  In this terminal type, `git clone <paste link here>`.  This downloads a folder on your desktop that is linked to the online repo.
#### Setup Files on Local Machine 
1.  Open this folder on your desktop like you normally would.  Copy the homework files into this folder.
1.  Have your file structure inside this repo look like this for the python homework:  
```
      python_challenge 
            |__ PyBank/ 
            |    |__ Analysis/ 
            |    |__ Resources/  
            |    |   |__ budget_data.csv
            |    |
            |    |__ main.py
            |
            |__ PyPoll/  
            |    |__ Analysis/ 
            |    |__ Resources/  
            |    |   |__ election_data.csv
            |    |
            |    |__ main.py
            |
            |__ README.md
            |__ .gitignore

```
####  Homework Advice
1.  The key concepts I would work on understanding that apply for the homework are:  
    *  Prompts - Day 1, Activity 4
    *  Conditionals - Day 1, Acitivity 8
    *  Lists - Day 1, Activity 9 (append(), index())
    *  Loops - Day 1, Activity 11 (for/in, range(), len())
    *  Read csvs - Several examples but Day 2, Activity 9 explore it well
    *  Data capture - Day 2, Activity 12 (uses lists, appends, csv.reader, for loops).  This is probably similar to the homework.
    *  Dictionaries - Day 3, Activity 3 - good for PyPoll
    *  List comprehensions - Day 3, Activity 5
    *  Maybe there are some other activities that can give you inspiration.  
    
1.  After Day 2 you can start attempting to read the data and print it to the terminal.  If you use the structure above then I image one line of code would be for PyBank `os.path.join("Resources", "budget_data.csv")`.  Can you explain why it would be this instead of what you saw in most of the class activities?  It's slightly differet.  How to use this further is done in Activity 12, and some Day 3 early activities and will be covered next.  
1.  PyBank is probably the easier one to code and can be completed using lists.  
    *  It is a similar concept to the VBA homework where we are looping through data and restructing it.
    *  Most of the concepts are learned in Day2 Activities
1.  PyPoll is probably a bit more complicated to program but easier to understand than PyBank and can be completed using lists or dictionaries.
    * List could be used to complete this activity by using the `if` and `in` structure and `list.index()` method that we say in `Day 1 Activity 8 and Activity 9`.  The more official way of doing it is to use a dictionary because a dictionary structure was created for this type of data.
1.  At this point, you can start planning what you should do on paper.  Read the instructions about what is required and see if you can write steps for what is needed.
    *  Need to bring the data into the script - aka csvreader, csv.reader
    *  At the end, a command line output and file needs generated - aka print() and csv.writer
    *  What do we do with data after we read it?  It's coming next in Day 2, Activity 12 and Day 3, Activities.  Hint: in some cases we will add it to lists and in some cases we can do calculations with this as each row is read.
    *  Check the data file.  Also, note that Excel will not read the Date column correctly.  Look at the .csv file in VSCode or in a text editor.  The data is in Month-Year format.  What does each column represent?  If I was going to do the objectives of this assignment, I would first ask myself how would I do this manually. The questions asked are as follows:
        *  Refer to the sample analysis output at the bottom to make sense of the objectives.
        *  Total months is self explanitory after looking at the data
        *  Total:  The data file is a list of profit/loss data of just each month so the net total amount is the summation of all the numerical data
        *  The changes in proit/loss is a month-to-month calculation finding the change between each month as in this month less last month (hint:  you will need this calculated monthly data for the next two questions).  The sum of all these differences added together then divided by the total months makes a single value called "Average Change".  See homework sample output.
        * The greatest increase in profits is using the month-to-month profit change calculated previously and finding the max value out of all the months. You need to find the month and the greatest amount.
        *  Same idea with greatest decrease.  The greatest drop from one month to the next.  Need to find the month and the value.  
    



The final output of your script should look similar to the following:

  ```text
  Financial Analysis
  ----------------------------
  Total Months: 86
  Total: $22564198
  Average Change: $-8311.11
  Greatest Increase in Profits: Aug-16 ($1862002)
  Greatest Decrease in Profits: Feb-14 ($-1825558)
  ```

#### Push Repo to GitHub 
After you get your initial files added to your repo folder then you can update your online GitHub repo.
**`Any time you make some significant changes then you should do the following.`**  This is part of the documention process and part of the file backup process.  Every 'commit' saves a snapshot of your files.

1.  Navigate to the top level of your repo folder.
1.  The easiest way to do this is by right clicking on the repo folder.  If you are in the right location on your terminal then by typing `ls` should show you your folders and the README.md and .gitiginore file.  This inidcates you are inside your repo folder at the top level.  
1.  At this top level location do the following in terminal:  
    * `git status`
    * `git add .`
    * `git commit -m "what is being added/changed"`
    * `git push origin main`
1.  `git status` is used to see what changes are going to be made - what files need to be tracked, what changes have occurred, etc.
