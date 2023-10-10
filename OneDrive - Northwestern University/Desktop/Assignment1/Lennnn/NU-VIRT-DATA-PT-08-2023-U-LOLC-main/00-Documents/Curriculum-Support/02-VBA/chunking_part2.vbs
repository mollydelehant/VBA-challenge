' Chunking Part 2

'Step 1.  Read the instructions

'In this activity, you will practice comparing cells to calculate the total
'transaction amount for different credit card brands.

'## Instructions

'* Create a VBA script that will process the credit card purchases
' by identifying each of the unique brands listed.

'* Create a single pop-up message for each of the credit card brands
'listed by looping through the list.

' ## Bonus
'Add up the total value of credit card purchases for each brand, and
'put the information in the summary table.

'Step 2.  Breakdown the Problem
' find unique brands - found in Column A, those are strings.  After I find
' the unique values where do I put them/ what do the instructions want me to do next?
' I will need a popup - MsgBox() - does it just want the unique brand names?
' Okay, I have more questions than answers - what else do I have that tells me about
' this request.
' Solution:  "Instructor, what should this look like?"  Answer:  List all the unique
' brands in column G but include a header name so we know what that is.
' Follow-up Question: "Instructor, the bonus says add up the charged amounts,
' do we put those values in Column H".  Answer:  "Yes, that sounds fine."

'Step 3.  Sketch out your idea.  This is like brainstorming but the goal is to add order of events
'If I was going to do this manually on paper then I would do the following:
' 1.  find the first cell with data (row 2)
' 2.  write down the brandname
' 3.  Go to the next row and check if the next row is different
' 4.  If the next cell is different than the current cell then write down the brand in the next row
' 5.  Continue comparing and listing for each row.

'Step 4.  Review my sketch.
' 1.  Ooops, I did not say where to write down the values
' 2.  I need to put the first value in cell G2 then I need to increase
'     the G column row number by one row.
' 3.  I need to increase this 'summary table row' each time I add a value.

'Step 5.  Write some Code - notice how much thought was put in before even starting to code.


Sub cards1()
' we will assume that Column A is sorted by alphabetical order and the spelling/capitalization is all the same

Dim brandName As String
Dim i As Integer

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)

For i = 2 To 8
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Brand: " + Cells(i + 1, 1))

    End If

Next i

'When I run this I get the first brand but each of the next brand instead of it just once.
' This tells me that I need to change my code so that I set brandName to the new brand after I find
' it.

End Sub


Sub cards2()
' I updated the code so the brand changes
'Lets test with more rows

Dim brandName As String
Dim i As Integer

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)

For i = 2 To 8
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Brand: " + Cells(i + 1, 1).Value)
        
        'update brandname after displaying it; we know the next row (i + 1) is the next row
        brandName = Cells(i + 1, 1).Value

    End If

Next i

' Now it works like I thought it should.  Lets see what happens if I set the rows from 2 to 8 to 2 to 50
' Does it still work?  Verify that it is doint what you expect.  It will only do what you tell it to do.
' So you must know what you want it to do.  This is a great time to become a bit 'bossy'.

End Sub

Sub cards3()
'Lets update the code to put the brand in a table in column G

Dim brandName As String
Dim i As Integer

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)

For i = 2 To 8
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Brand: " + Cells(i + 1, 1).Value)
        
        'update brandname after displaying it; we know the next row (i + 1) is the next row
        brandName = Cells(i + 1, 1).Value
        
        'Set column G row 2 to have the brandname
        Cells(2, 7).Value = brandName

    End If

Next i
' oops, it overwrites my value, lets fix that becasue the 2 needs to increase with each brand found
End Sub

Sub cards4()
'Lets update the code to put the brand in a table in column G

Dim brandName As String
Dim i, j As Integer

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)
Cells(2, 7).Value = brandName

' initilize row where summary table will put second found item
j = 3

For i = 2 To 8
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Brand: " + Cells(i + 1, 1).Value)
        
        'update brandname after displaying it; we know the next row (i + 1) is the next row
        brandName = Cells(i + 1, 1).Value
        
        'Add string to summary table at position j
        Cells(j, 7).Value = brandName
        'Update j so the next time it is used it will be one row lower.
        j = j + 1

    End If

Next i
' So I added the first brand to be added above the for loop and then everyone brand afterwards
' is added at position j.  Now lets see what this does for up to 50 rows and then 101 rows.
' After running go to the spreadsheet and delete the new info added to column G so we can keep testing
' and seeing any changes.

' I think this does what is requested but I need to check my instructions.  The next part is to do some summations.

End Sub

Sub cards5()
'Lets add some summing and add this to summed value in column H
' we will want to add each new value that is the same brand


Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summed_charge As Double

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)
Cells(2, 7).Value = brandName

' initilize row where summary table will put second found item
j = 3

' grab the first value from charges
summed_charge = Cells(2, 3).Value
' lets check that we got the right value
MsgBox ("First Summed Charge is " & summed_charge)

For i = 2 To 8
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Next Brand: " + Cells(i + 1, 1).Value)
        
        'update brandname after displaying it; we know the next row (i + 1) is the next row
        brandName = Cells(i + 1, 1).Value
        
        'Add string to summary table at position j
        Cells(j, 7).Value = brandName
        
        'Sum the last value
        summed_charge = summed_charge + Cells(i, 3).Value
        
        'Add summed value to summary table
        Cells(j, 8).Value = summed_charge
    
        'Update j so the next time it is used it will be one row lower.
        j = j + 1
    ElseIf brandName = Cells(i + 1, 1) Then
        'sum each cell that is the same brand. Note line above which checks if they are the same.
        summed_charge = summed_charge + Cells(i, 3).Value

    End If

Next i

'oooops, I am off by one row in column H and my summed values are a bit off
' I think I am incrementing wrong on this new code.  Let's fix it next.
' First investigate the problem.  Take the answer put in the H column and
' subtract it from what the value is being calculated.
' So sum cells C2:C6 in the excel spreadsheet, which is 2099
' Subtract the output in H, which is 2033) and the difference is 134.
' It looks like I am add 134 twice.  So maybe I just need to initialize my
' summed_charge to be 0 initially.
End Sub

Sub cards6()
'Lets add some summing and add this to summed value in column H
' we will want to add each new value that is the same brand


Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summed_charge As Double

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)
Cells(2, 7).Value = brandName

' initilize row where summary table will put second found item
j = 3

' grab the sum before looping
summed_charge = 0  ' Cells(2, 3).Value
' lets check that we got the right value
MsgBox ("First Summed Charge is " & summed_charge)

For i = 2 To 9
    If brandName <> Cells(i + 1, 1) Then
        MsgBox ("Brand: " + Cells(i + 1, 1).Value)
        
        'update brandname after displaying it; we know the next row (i + 1) is the next row
        brandName = Cells(i + 1, 1).Value
        
        'Add string to summary table at position j
        Cells(j, 7).Value = brandName
        
        'Sum the last value
        summed_charge = summed_charge + Cells(i, 3).Value
        
        'lets check what this value is
        MsgBox ("Final Summed Charged for " & Cells(i, 1).Value & "is " & summed_charge)
        
        'Add summed value to summary table
        Cells(j - 1, 8).Value = summed_charge
        
        'Update j so the next time it is used it will be one row lower.
        j = j + 1
    ElseIf brandName = Cells(i + 1, 1) Then
        'sum each cell that is the same brand. Note line above which checks if they are the same.
        summed_charge = summed_charge + Cells(i, 3).Value
        'added message to check the looping
        MsgBox ("Current Summed Charged for " & brandName & "is " & summed_charge)
    
    End If

Next i


End Sub

Sub cards7()
'Lets test it on all cells, remove messaging so you don't wear out your mouse.


Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summed_charge As Double

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)
Cells(2, 7).Value = brandName

' initilize row where summary table will put second found item
j = 3

' grab the sum before looping
summed_charge = 0  ' Cells(2, 3).Value

For i = 2 To 101
    If brandName <> Cells(i + 1, 1) Then

        brandName = Cells(i + 1, 1).Value
        
        'Add string to summary table at position j
        Cells(j, 7).Value = brandName
        
        'Sum the last value
        summed_charge = summed_charge + Cells(i, 3).Value
        
        'Add summed value to summary table
        Cells(j - 1, 8).Value = summed_charge
        
    
        'Update j so the next time it is used it will be one row lower.
        j = j + 1
    ElseIf brandName = Cells(i + 1, 1) Then
        'sum each cell that is the same brand. Note line above which checks if they are the same.
        summed_charge = summed_charge + Cells(i, 3).Value
        'added message to check the looping
    
    End If

Next i
' so close.  we need to zero the summed value after we put it in column H

End Sub

Sub cards8()
' minor fix to summing

Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summed_charge As Double

brandName = Cells(2, 1).Value
MsgBox ("The first brand is " + brandName)
Cells(2, 7).Value = brandName

' initilize row where summary table will put second found item
j = 3

' grab the sum before looping
summed_charge = 0  ' Cells(2, 3).Value

For i = 2 To 101
    If brandName <> Cells(i + 1, 1) Then

        brandName = Cells(i + 1, 1).Value
        
        'Add string to summary table at position j
        Cells(j, 7).Value = brandName
        
        'Sum the last value
        summed_charge = summed_charge + Cells(i, 3).Value
        
        'Add summed value to summary table
        Cells(j - 1, 8).Value = summed_charge
        
        'Stored correct value so now lets set this to zero for the next brand
        summed_charge = 0
        
        'Update j so the next time it is used it will be one row lower.
        j = j + 1
    ElseIf brandName = Cells(i + 1, 1) Then
        'sum each cell that is the same brand. Note line above which checks if they are the same.
        summed_charge = summed_charge + Cells(i, 3).Value

    End If

Next i
' it works.
' Last step.  Refactor/Clean up
' add in comments
' comment out some messages or delete them.  Commenting out is usualy better
' make this draft better, I can probalby rewrite it so it is more concise, less i+1 or incrementor fixes.

End Sub

Sub cards9()
' Cleaning up the code to make it more readable
' inside the for loop, I have a j and j-1 terms and that is due
' to adding the brandname in section above the for loop and the total
' in the for loop so lets make this more consistent.
' I wrote it this way originally because sometimes it is easier to write
' the code so that the first line and last line are handled a bit differently.
' If I define the intitial or starting values at the very beginning then sometimes
' that can make my looping easier.

Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summedCharge As Double

'first brand is always known
brandName = Cells(2, 1).Value

' initilize row where summary table will put second found item
j = 2

' initialize the summed value
summedCharge = 0

For i = 2 To 101

    'Cells(i+1,1).Value is one row lower than the current row we are inspecting, i
    If brandName <> Cells(i + 1, 1).Value Then
    
        'set summary table G column value at row j
        Cells(j, 7).Value = brandName
        
        'I would put a message box here to see what the first brandname is
        'MsgBox()
        
        ' set brandname to next product since all messaging and storing is done
        brandName = Cells(i + 1, 1).Value
        
        'Sum the last value before changing to the next brand
        summedCharge = summedCharge + Cells(i, 3).Value
        
        'Add summed value to summary table
        Cells(j, 8).Value = summedCharge
        
        'I would put a message box here to see what the final summed charged amout is
        'MsgBox()
        
        'Stored correct value so now lets set this to zero for the next brand to be summed form zero
        summed_charge = 0
        
        'Update j so the next time it is used it will be one row lower.
        j = j + 1
        
    ElseIf brandName = Cells(i + 1, 1) Then
        'sum each cell that is the same brand. Note line above which checks if they are the same.
        summedCharge = summedCharge + Cells(i, 3).Value

    End If

Next i


End Sub

'**********************************************************************************************************
''' Compare to class answer
' The answer below is very similar with just minor differerences.
' I typically use range like they do below, the code below concatentates
'''

Sub credit_card_similar_to_solved()

  ' Set an initial variable for holding the brand name
  Dim Brand_Name As String

  ' Set an initial variable for holding the total per credit card brand
  Dim Brand_Total As Double
  Brand_Total = 0

  ' Keep track of the location for each credit card brand in the summary table
  Dim Summary_Table_Row As Integer
  Summary_Table_Row = 2

  ' Loop through all credit card purchases
  For i = 2 To 101

    ' Check if we are still within the same credit card brand, if it is not...
    If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

      ' Set the Brand name
      Brand_Name = Cells(i, 1).Value

      ' Add to the Brand Total
      Brand_Total = Brand_Total + Cells(i, 3).Value

      ' Print the Credit Card Brand in the Summary Table
      Range("G" & Summary_Table_Row).Value = Brand_Name

      ' Print the Brand Amount to the Summary Table
      Range("H" & Summary_Table_Row).Value = Brand_Total

      ' Add one to the summary table row
      Summary_Table_Row = Summary_Table_Row + 1
      
      ' Reset the Brand Total
      Brand_Total = 0

    ' If the cell immediately following a row is the same brand...
    Else

      ' Add to the Brand Total
      Brand_Total = Brand_Total + Cells(i, 3).Value

    End If

  Next i

End Sub

'**********************************************************************************************************
' This expands the previous answer to loop through multiple sheets (like done in Activity 7 & 8)
'''



Sub cards10()
' Here is the activity from module1
' The goal here is to run the module on the three new spreadsheets

Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summedCharge As Double

' Setup loop to go through all spreadsheets (part 1 of Census Activity)
' When adding For Each ws .. remember to add the Next ws at the end of the script
' Also remember to highlight all the code inside the for each and hit tab to get the spacing correct
' You will also need to add ws. infront of each Cells() and/or Range command
Dim ws As Worksheet
For Each ws In Worksheets

    'first brand is always known
    brandName = ws.Cells(2, 1).Value
    
    ' initilize row where summary table will put second found item
    j = 2
    
    ' initialize the summed value
    summedCharge = 0
    
    For i = 2 To 101
    
        'Cells(i+1,1).Value is one row lower than the current row we are inspecting, i
        If brandName <> ws.Cells(i + 1, 1).Value Then
        
            'set summary table G column value at row j
            ws.Cells(j, 7).Value = brandName
            
            'I would put a message box here to see what the first brandname is
            'MsgBox()
            
            ' set brandname to next product since all messaging and storing is done
            brandName = ws.Cells(i + 1, 1).Value
            
            'Sum the last value before changing to the next brand
            summedCharge = summedCharge + ws.Cells(i, 3).Value
            
            'Add summed value to summary table
            ws.Cells(j, 8).Value = summedCharge
            
            'I would put a message box here to see what the final summed charged amout is
            'MsgBox()
            
            'Stored correct value so now lets set this to zero for the next brand to be summed form zero
            summedCharge = 0
            
            'Update j so the next time it is used it will be one row lower.
            j = j + 1
            
        ElseIf brandName = ws.Cells(i + 1, 1) Then
            'sum each cell that is the same brand. Note line above which checks if they are the same.
            summedCharge = summedCharge + ws.Cells(i, 3).Value
    
        End If
    
    Next i

Next ws

End Sub








Sub cards11()
' Here is the activity from module2 in this workbook
' The goal here is to run the module on the three new spreadsheets
' At the bottom is code that puts the summaries on one new sheet and does some styling

Dim brandName As String
Dim i, j As Integer

'make variable to hold a summed value
Dim summedCharge As Double

' Setup loop to go through all spreadsheets (part 1 of Census Activity)
' When adding For Each ws .. remember to add the Next ws at the end of the script
' Also remember to highlight all the code inside the for each and hit tab to get the spacing correct
' You will also need to add ws. infront of each Cells() and/or Range command
Dim ws As Worksheet

'so not to get errors each time I rerun this.  I first make sure I delete the Summary sheet then I add it.
'If you try to add a sheet and an existing worksheet exists with the same name then causes an error.
For Each ws In Worksheets
    If ws.Name = "Summary" Then
        Sheets("Summary").Delete
    End If
Next ws

For Each ws In Worksheets

    'first brand is always known
    brandName = ws.Cells(2, 1).Value
    
    ' initilize row where summary table will put second found item
    j = 2
    
    ' initialize the summed value
    summedCharge = 0
    
    For i = 2 To 101
    
        'Cells(i+1,1).Value is one row lower than the current row we are inspecting, i
        If brandName <> ws.Cells(i + 1, 1).Value Then
        
            'set summary table G column value at row j
            ws.Cells(j, 7).Value = brandName
            
            'I would put a message box here to see what the first brandname is
            'MsgBox()
            
            ' set brandname to next product since all messaging and storing is done
            brandName = ws.Cells(i + 1, 1).Value
            
            'Sum the last value before changing to the next brand
            summedCharge = summedCharge + ws.Cells(i, 3).Value
            
            'Add summed value to summary table
            ws.Cells(j, 8).Value = summedCharge
            
            'I would put a message box here to see what the final summed charged amout is
            'MsgBox()
            
            'Stored correct value so now lets set this to zero for the next brand to be summed form zero
            summedCharge = 0
            
            'Update j so the next time it is used it will be one row lower.
            j = j + 1
            
        ElseIf brandName = ws.Cells(i + 1, 1) Then
            'sum each cell that is the same brand. Note line above which checks if they are the same.
            summedCharge = summedCharge + ws.Cells(i, 3).Value
    
        End If
    
    Next i

Next ws

'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'This section below is similar to the last activity of Day3 (Census)

'I should probably put these declarations at the top but for now I will put them here
Dim sh1 As Worksheet
Dim firstRow, lastRow As Integer
Dim sheetYearArray As Variant
Dim sheetYearOnly As String



'Add new sheet before the first sheet
Sheets.Add(Before:=Sheets("MOCK_DATA-2016")).Name = "Summary"

'Create column names through code
'Note: I added a column to include the year of the transactions
Sheets("Summary").Range("A1").Value = "Credit Card Brand"
Sheets("Summary").Range("B1").Value = "Year"
Sheets("Summary").Range("C1").Value = "Total Charges"

' set row number for summary table on new sheet aka Summary aka sh1
' row one are the headers
j = 2

For Each ws In Worksheets

    'execute this code on all the sheets except for Summary
    If ws.Name <> "Summary" Then
    
        ' get the year from the tab name
        sheetYearArray = Split(ws.Name, "-")
        sheetYearOnly = sheetYearArray(1)
        
        ' find the summary table last row and first row
        ' important to use calculation to find lastRow because it is not the number of rows on each sheet
        ' Note that I am using column 7 from each ws to determine how many rows to add to the summary page
        lastRow = ws.Cells(Rows.Count, 7).End(xlUp).Row
        firstRow = 2
        
        'I set sh1 so I don't need to keep typing 'Worksheets("Summary").Cells()... See below
        Set sh1 = Worksheets("Summary")
        
        For i = firstRow To lastRow
            
            'set values on summary sheet (sh) by grabbing values from the current worksheet in the loop
            sh1.Cells(j, 1).Value = ws.Cells(i, 7).Value
            sh1.Cells(j, 2).Value = sheetYearOnly
            sh1.Cells(j, 3).Value = ws.Cells(i, 8).Value
            
            'finished assigning all values for this row on sheet sh, increment j for next row
            j = j + 1
            
            'Note: no need to reset this j value to zero because it always gets bigger
            ' when populating the summary sheet correctly.
            
        Next i
    
    End If
    
Next ws

' this is one method of several to change the format of a column
' I do this instead of changing the format for each cell within one of the loops
sh1.Columns(3).NumberFormat = "$#,###"

' Autofit to display data
sh1.Columns("A:K").AutoFit

'Make columns Bold
sh1.Range("A1:C1").Font.Bold = True


'Find max value
Dim maxValue, minValue As Integer

'initialize max, min with first value
maxValue = sh1.Cells(2, 3).Value
maxValueRow = 2
minValue = sh1.Cells(2, 3).Value
minValueRow = 2

'note that I am choosing the length of column 3
'in many cases the for loops can be combined so this tracking of values can be done
'in the loops that have already been created.
'The combining of sections of code and simplifying code and making it more readable is
'called refactoring - https://en.wikipedia.org/wiki/Code_refactoring
For i = 2 To sh1.Cells(Rows.Count, 3).End(xlUp).Row

    If sh1.Cells(i, 3).Value > maxValue Then
        maxValue = sh1.Cells(i, 3).Value
        maxValueRow = i
    End If
    
    If sh1.Cells(i, 3).Value < minValue Then
        minValue = sh1.Cells(i, 3).Value
        minValueRow = i
    End If

Next i

'set max cell background color to red
sh1.Cells(maxValueRow, 3).Interior.ColorIndex = 3

'set max cell background color to green
sh1.Cells(minValueRow, 3).Interior.ColorIndex = 4



End Sub

