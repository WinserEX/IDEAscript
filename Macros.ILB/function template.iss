Sub Main  
    IgnoreWarning(true)

    Call directo("Ejemplo-Detalle de ventas.IMD", "5.5.8.IMD", "(COD_PROD == ""02"" .OR. COD_PROD == ""06"") .AND. TOTAL = 100000")
    
    Client.RefreshFileExplorer
End Sub

Function directo (dbSource, dbNombre, dbTask) 
    Set db = Client.OpenDatabase(dbSource)
    Set task = db.Extraction
    task.IncludeAllFields
    dbName = dbNombre
    task.AddExtraction dbName, "", dbTask
    task.CreateVirtualDatabase = False
    task.PerformTask 1, db.Count
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)
End Function

