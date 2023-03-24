Sub Main  
    IgnoreWarning(true)

    Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
    Set task = db.TableManagement
    Set field = db.TableDef.NewField
    field.Name = "TOTAL_REAL"
    field.Description = ""
    field.Type = WI_NUM_FIELD
    field.Equation = "NETO + IMPUESTO"
    field.Decimals = 2
    task.AppendField field
    task.PerformTask
    Set task = Nothing
    Set db = Nothing
    Set field = Nothing

    Client.RefreshFileExplorer
End Sub
