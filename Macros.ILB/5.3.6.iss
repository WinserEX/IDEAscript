Sub Main
    IgnoreWarning(true)
    Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
    Set task = db.Extraction
    task.IncludeAllFields
    dbName = "5.2.6.IMD"
    task.AddExtraction dbName, "", "NUM_VENDEDOR = ""105"" .AND. TOTAL > 10000"
    task.CreateVirtualDatabase = False
    task.PerformTask 1, db.Count
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)
    Client.RefreshFileExplorer
End Sub