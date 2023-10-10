# Git Starter Tasks  


Here is a list of tasks that you can do if you have some free time this weekend or early next week.  This is not required but these tasks are to give you some insight about how we will be using git, gitHub, and gitLab.  The priority for this weekend is the Excel homework.  

1.  To do any of these tasks you will need to make sure you have your SSH keys setup.   The instructions can be found in the class repo at this location: [LINK](https://git.bootcampcontent.com/Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC/-/blob/main/00-Documents/ssh-keys-setup.md)  

## Using GitLab

GitLab will be used to access class files.  You do not have permission to post anything to this site.  

1.  Once you have the have your SSH key setup then you can clone the class files.  The instructions can be found in the class repo at the bottom of this page: [LINK](https://git.bootcampcontent.com/Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC).  If you have already cloned the repo then you can move to the next step.  Just be aware that in this step we put the cloned repo in a folder called `ClassFiles` on the desktop.    
    * The instructions look like this:  
    1.  Clone repo:  
        *  First create a folder on your desktop called `ClassFiles`.  This folder will hold your class repository.  I would also create a folder inside this folder called "Homework".  
        *  On the repo main page (https://git.bootcampcontent.com/Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC), click the blue `Clone` button.
        *  The popup will allow you to copy the SSH link.  It is typically the first option.  The link will look like `git@git.bootcampcontent.com:Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC.git`.
        *  Copy the link and go to your desktop and right click on the folder called `ClassFiles` and choose 'Git Bash Here' or 'Open terminal in Folder'.  If you don't see these options look for a menu option that says 'Show more options'.    
        *  In this terminal type, `git clone <paste link here>`.  It should look like this: `git clone git@git.bootcampcontent.com:Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC.git`.  This downloads a folder into the ClassFiles folder that is linked to the online repo.  That is the final step.  **You will never need to do the cloning process again.**  The folder that is added will be named `NU-VIRT-DATA-PT-08-2023-U-LOLC`.  

1.  At the beginning of each class, you can do the following to get all the updated files.  Remember, I will be adding the solved versions of the class activities after each class or early the next day.  You can check for updates by doing the following task.  The instructions for this can also be found in the class repo at the bottom of this page: [LINK](https://git.bootcampcontent.com/Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC).  
    1.  Update the repo:
        *  Open the `ClassFiles` folder via File Viewer on Mac or Windows Explorer on Windows.
        *  Right-click the `NU-VIRT-DATA-PT-08_2023-U-LOLC` folder and then open a Git Bash (Windows) or Terminal (Mac).  When you right click on the folder you should see an option for 'Open Terminal in Folder' or 'Git Bash Here'.  On Windows, you might need to click the right click menu option of 'Show more options' to see the Git Bash menu options.  
        *  In the terminal type:  `git pull origin main` to pull the new files from GitLab that have been added or updated since the last time you pulled the repo.  


Those are the main commands that you will use with GitLab, aka Class Repo, aka git.bootcampcontent.com.  


## Using GitHub  

GitHub will be used to create your portfolio and for you to submit your homework.  

1.  Once you have your SSH key setup then you can start using terminal/gitbash to interact with GitHub.  When you start a homework, you will do the same routine every time.  The instructions can be found in the repo here: [LINK](https://git.bootcampcontent.com/Northwestern-University/NU-VIRT-DATA-PT-08-2023-U-LOLC) 
    1.  Create a Repo on GitHub by going to github.com   
        *  In GitHub, login and then click on the Cat logo in the upper left corner.  Find the Green button that says `New` on the page. 
        *  On the Create a new repository page.  Fill in the repo name, give it a short description (can be changed later), select Public, select Add a README, select Add .gitignore and in the new dropdown select Python.  
        *  Click `Create repository`  
        *  **TRY THIS**:  Make a repo called `excel-kickstarter-analysis` and do the above tasks.  
    1.  You should now see your new repo and it will only have an empty README.md file and a .gitignore file.  Lets add these to your desktop.
    1.  Clone repo:  
        *  On the repo main page, click the green `Code` button.
        *  There are three link options (HTTPS, SSH, GithubCLI), make sure to click the SSH tab.  The link will then look like `git@github.com:<username>/<repo name>.git`.
        *  Copy the link and go to your 'Homework' folder inside the 'ClassFiles' folder and right click on the Homework folder and choose 'Git Bash Here' or 'Open terminal in Folder'.  
        *  In this terminal type, `git clone <paste link here>`.  This downloads a folder on your desktop that is linked to the online repo.  The folder name will match the repo's name.  
        *  **Important Note:** After you have cloned your repo to your local machine, I would highly advise **not adding** any files through the online interface.  It is a common problem when a push fails - advice about how to correct the issue is found in the class repo.
    1.  On your local machine add starter files to this new folder.  
        *  Open your repo folder on your desktop like you normally would.  Copy the homework files into this folder.
        *  Have your file structure inside your repos look like this for assignments unless otherwise requested in the homework instructions:  
        ```
            repo_name 
                    |__ data/   
                    |    |__ file_name.csv
                    |
                    |__ python_file.py or python_file.ipynb or excel_vba_script.txt or excel_vba_script.bas or any other text file
                    |__ README.md
                    |__ .gitignore  
        ```  
        *  **TRY THIS**:  Add the Unit 1 Excel files to this repo. This file is an Excel file but you can add it anyway.  GitHub has a few limits about what you can add to its cloud platform - the main limit is that files can not be larger than 100MB.
    1.  Update these files.  
        * Modify the starter files like you would change any other file on your computer.  After you make some changes then make a snapshot of the changes (for version control) and save it to GitHub (next step).  You can add and delete files and you can reorganize the files.  I would just suggest that you do not modify the repo from github.com anymore.  There are options there to modify, add, and delete files but you don't need to use these because you can modify the files on your own computer.  
    1.  Add the files to GitHub (push)
        *  After you get your initial files added to your repo folder then you can update your online GitHub repo.  Any time you make some significant changes then you should do the following.  This is part of the documention process and part of the file backup process.  Every 'commit' saves a snapshot of your files.
        1.  Navigate to the top level of your repo folder in GitBash or Terminal.  The easiest way to do this is by right clicking on the repo folder (NU-VIRT....) and doing the 'GitBash Here' or 'Open Terminal in Folder' process described above.  If your terminal is in the correct location then typing `ls` in the terminal should show your folders and the README.md and .gitiginore file.  This inidcates you are inside your repo folder at the top level.  At this top level location do the following in terminal:
            *  `git status`
            *  `git add .`
            *  `git commit -m "what is being added/changed message"`
            *  `git push origin main`
        1.  **Theo showed this process on Day 3 Activity 1 so you can review the video.**  
        1.  **TRY THIS**:  Make a few changes to the spreadsheet and go through the above steps a couple times.  Add files to the repo and go through the process.  Then delete files and then go through the process.  Reorganize the files into folders and go through the process.  Try adding this line of code to the top of the .gitignore file:  `.DS_Store` - open the file with VSCode.  We will talk about what this means.  Try adding an empty folder and see what happens - you might be surprised. 
    1.  Keep working on the files on your computer and keep pushing to github until the assignment is complete.  
    1.  Submit the repo link to the BootcampSpot Calendar "Module # Challenge" calendar event.  Here are some tips about homework submissions:
        *  Only submit links from your personal GitHub account.  DO NOT TRY TO SUBMIT A GITLAB LINK.
        *  Use your GitHub repo for all homeworks and projects; after the first homework (due Monday, September 11th) we only accept github links.  
        *  Use the browser URL that leads to your repo's page (ie `https://github.com/<username>/<repo_name>` ) or get the http link via this method:  
            *  In the upper right corner of the repo is a green button that says Code.  Click this button.
            *  Select `HTML` from the three tabs at the top of the new menu.
            *  Click the copy button for the link.  It should be in the format of `https://github.com/<username>/<repo_name>.git`  

I think this covers the key instructions for how you will use GitLab and GitHub throughout this course.  We will show you how to use it for group collaborations during Project 1.  





    






