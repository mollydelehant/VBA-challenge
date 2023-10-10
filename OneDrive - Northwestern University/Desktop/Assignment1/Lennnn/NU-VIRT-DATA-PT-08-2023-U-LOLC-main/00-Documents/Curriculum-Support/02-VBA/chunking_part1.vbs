' Chunking:  This is the final code but we can break it down into small testable steps.

Sub credit_card()

  ' Set an initial variable for holding the brand name
  Dim Brand_Name As String

  ' Loop through all credit card purchases
  For i = 2 To 101

    ' Check if we are still within the same credit card brand, if we are not...
    If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

      ' Message Box the unique Bank Name
      MsgBox(Cells(i, 1).Value)

    End If

  Next i

End Sub

'###########################################################################################
' *** Note: These code chunks are all inside a Sub() // End Sub structure

' Step 1: compare just the first two cells
    If Cells(3, 1).Value <> Cells(2, 1).Value Then

      ' Message Box the unique Bank Name
      MsgBox(Cells(2, 1).Value)

    End If

    'Does this work as you would expect?  Did you check to see if other cells also work?  
    'If it works for the two possible cases then it is probably good to add code around it.

' Step 2:  Let's add functionality so we don't need to manually change the parts inside Cells()
  For i = 2 To 4
    MsgBox(Cells(i,1).Value)
  Next i

' i stands for the row number; this shows we can grab the value in each row
' note that I only did a loop for rows 2 to 4 because there is no reason yet to try to do it for the entire sheet.

' Step 3:  Combine Step 1 and Step 2

For i = 2 to 4
    If Cells(i+1, 1).Value <> Cells(i, 1).Value Then

      ' Message Box the unique Bank Name
      MsgBox(Cells(i, 1).Value)

    End If
Next i

' Step 4:  If that works then increase the loop from 4 to 10 and then 101 to see if it works.
' If it breaks at any point then you need to inpsect what is happening.

' Step 5:  Here is the final code.  Note:  the original Dim string is not needed so I removed it.

Sub credit_card()

  ' Loop through all credit card purchases
  For i = 2 To 101

    ' Check if we are still within the same credit card brand, if we are not...
    If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

      ' Message Box the unique Bank Name
      MsgBox(Cells(i, 1).Value)

    End If

  Next i

End Sub