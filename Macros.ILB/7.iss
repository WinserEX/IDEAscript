Sub Main  
    IgnoreWarning(true)
    
    Set db = Client.OpenDatabase("5.5.8.IMD")
    Set task = db.Summarization
    task.AddFieldToSummarize "NUM_VENDEDOR"
    task.AddFieldToTotal "TOTAL"
    dbName = "Resumen.IMD"
    task.OutputDBName = dbName
    task.CreatePercentField = FALSE
    task.StatisticsToInclude = SM_SUM
    task.PerformTask
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)

    Client.OpenDatabase (dbName)
End Sub