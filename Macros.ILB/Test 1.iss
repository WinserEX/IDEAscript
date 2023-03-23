Sub Main
    IgnoreWarning(true)
    Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
    Set task = db.Extraction
    task.IncludeAllFields
    dbName = "Ejemplo.IMD"
    task.AddExtraction dbName, "", "NUM_VENDEDOR = ""101"""
    task.CreateVirtualDatabase = False
    task.PerformTask 1, db.Count
    Set task = Nothing
    Set db = Nothing
    Client.OpenDatabase (dbName)
End Sub