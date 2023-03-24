Sub Main  
    IgnoreWarning(true)

    Call nuevoCampo("Ejemplo-Detalle de ventas.IMD", "NETO + IMPUESTO", "TOTAL_REAL")

    Client.RefreshFileExplorer
End Sub

Function nuevoCampo (byval inputName, eqn, outputName) 
    Set db = Client.OpenDatabase(inputName)
    Set task = db.TableManagement
    Set field = db.TableDef.NewField
    field.Name = outputName
    field.Description = ""
    field.Type = WI_NUM_FIELD
    field.Equation = eqn
    field.Decimals = 2
    task.AppendField field
    task.PerformTask
    Set task = Nothing
    Set db = Nothing
    Set field = Nothing
End Function
