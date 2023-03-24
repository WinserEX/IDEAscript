Sub Main
    IgnoreWarning(true)
    Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
    Set task = db.Extraction
    task.IncludeAllFields
    dbName = "5.5.8.IMD"
    task.AddExtraction dbName, "", "(COD_PROD == ""02"" .OR. COD_PROD == ""06"") .AND. TOTAL = 100000"
    task.CreateVirtualDatabase = False
    task.PerformTask 1, db.Count
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)
    Client.RefreshFileExplorer
End Sub