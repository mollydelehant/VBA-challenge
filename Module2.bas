Attribute VB_Name = "Module1"

' collaborated with Joseph DeVito


Sub Stocks3()
    Const FIRST_DATA_ROW As Integer = 2
    Const TICKER_COL As Integer = 1
    Const OPEN_COL As Integer = 3
    Const CLOSE_COL As Integer = 6
    Const VOL_COL As Integer = 7
    Const COLOR_RED As Integer = 3
    Const COLOR_GREEN As Integer = 4
    
    Dim CurrentWs As Worksheet
    Dim Ticker_Name As String
    Dim Total_Volume As Double
    Dim Opening_Price As Double
    Dim Closing_Price As Double
    Dim Yearly_Change As Double
    Dim Yearly_Change_Ratio As Double
    Dim Greatest_Increase_Value As Double
    Dim Greatest_Decrease_Value As Double
    Dim Greatest_Volume_Value As Double
    Dim Greatest_Increase_Ticker As String
    Dim Greatest_Decrease_Ticker As String
    Dim Greatest_Volume_Ticker As String
    Dim Summary_Table_Row As Long
    Dim LastRow As Long
    Dim i As Long
    
    ' Loop through the worksheets
    For Each CurrentWs In ThisWorkbook.Sheets
            Total_Volume = 0
            Closing_Price = 0
            Yearly_Change = 0
            Greatest_Increase_Value = -999
            Greatest_Decrease_Value = 999
            Greatest_Volume_Value = -999
            Summary_Table_Row = FIRST_DATA_ROW
            
            Opening_Price = CurrentWs.Cells(FIRST_DATA_ROW, OPEN_COL).Value
            
            ' Retrieve the last row in the current worksheet
            LastRow = CurrentWs.Cells(Rows.Count, TICKER_COL).End(xlUp).Row
            
            ' Make headers for the results table
            CurrentWs.Range("I1").Value = "Ticker"
            CurrentWs.Range("J1").Value = "Yearly Change"
            CurrentWs.Range("K1").Value = "Percent Change"
            CurrentWs.Range("L1").Value = "Total Stock Volume"
            
            ' Make headers for the greatest values table
            CurrentWs.Range("O2").Value = "Greatest % Increase"
            CurrentWs.Range("O3").Value = "Greatest % Decrease"
            CurrentWs.Range("O4").Value = "Greatest Total Volume"
            CurrentWs.Range("P1").Value = "Ticker"
            CurrentWs.Range("Q1").Value = "Value"
            
            ' Loop through & differentiate stocks by tickers
            For i = FIRST_DATA_ROW To LastRow
                Ticker_Name = CurrentWs.Cells(i, TICKER_COL).Value
                Total_Volume = Total_Volume + CurrentWs.Cells(i, VOL_COL).Value
                
                ' Set if statement for ticker name changing
                If CurrentWs.Cells(i + 1, TICKER_COL).Value <> Ticker_Name Then
                    ' Input
                    Closing_Price = CurrentWs.Cells(i, CLOSE_COL).Value
                    
                    ' Calculations
                    Yearly_Change = (Closing_Price - Opening_Price)
                    If Opening_Price <> 0 Then
                        Yearly_Change_Ratio = (Yearly_Change / Opening_Price)
                    End If
                    
                    ' Calculate greatest values
                    If Yearly_Change_Ratio > Greatest_Increase_Value Then
                        Greatest_Increase_Ticker = Ticker_Name
                        Greatest_Increase_Value = Yearly_Change_Ratio
                    End If
                    If Yearly_Change_Ratio < Greatest_Decrease_Value Then
                        Greatest_Decrease_Ticker = Ticker_Name
                        Greatest_Decrease_Value = Yearly_Change_Ratio
                    End If
                    If Total_Volume > Greatest_Volume_Value Then
                        Greatest_Volume_Ticker = Ticker_Name
                        Greatest_Volume_Value = Total_Volume
                    End If
                    
                    ' Output
                    CurrentWs.Range("I" & Summary_Table_Row).Value = Ticker_Name
                    CurrentWs.Range("L" & Summary_Table_Row).Value = Total_Volume
                    CurrentWs.Range("J" & Summary_Table_Row).Value = Yearly_Change
                    CurrentWs.Range("K" & Summary_Table_Row).Value = FormatPercent(Yearly_Change_Ratio)
                    If Yearly_Change_Ratio > 0 Then
                        CurrentWs.Range("J" & Summary_Table_Row).Interior.ColorIndex = COLOR_GREEN
                    Else
                        CurrentWs.Range("J" & Summary_Table_Row).Interior.ColorIndex = COLOR_RED
                    End If
                    
                    ' Prepare for the next stock
                    Summary_Table_Row = Summary_Table_Row + 1
                    Yearly_Change_Ratio = 0
                    Total_Volume = 0
                    Yearly_Change = 0
                    Closing_Price = 0
                    Opening_Price = CurrentWs.Cells(i + 1, OPEN_COL).Value
                End If
            Next i
            
            ' Place greatest values in the summary table
            CurrentWs.Range("P2").Value = Greatest_Increase_Ticker
            CurrentWs.Range("P3").Value = Greatest_Decrease_Ticker
            CurrentWs.Range("P4").Value = Greatest_Volume_Ticker
            CurrentWs.Range("Q2").Value = Greatest_Increase_Value
            CurrentWs.Range("Q3").Value = Greatest_Decrease_Value
            CurrentWs.Range("Q4").Value = Greatest_Volume_Value
      
    Next CurrentWs
    MsgBox "Done"
End Sub
