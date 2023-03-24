Sub Main  
    IgnoreWarning(true)

    Call directo("Ejemplo-Detalle de ventas.IMD", "FECHA_FACT  <  " & Chr(34) & "20230527" & Chr(34) & "", "5.5.8.IMD")
    
    Client.RefreshFileExplorer
End Sub

Function directo (byval inputName, eqn, outputName) 
    Set db = Client.OpenDatabase(inputName)
    Set task = db.Extraction
    task.IncludeAllFields
    dbName = outputName
    task.AddExtraction dbName, "", eqn
    task.CreateVirtualDatabase = False
    task.PerformTask 1, db.Count
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)
End Function

