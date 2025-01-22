Function MyFunction(param1, param2)
  On Error Resume Next
  If IsEmpty(param1) Or IsEmpty(param2) Then
    Err.Raise 5, , "Parameters cannot be empty"
  End If
  On Error GoTo 0
  ' ... rest of the function ...
End Function

' Example usage, demonstrating error handling:

Call MyFunction(,)
If Err.Number <> 0 Then
  MsgBox "Error: " & Err.Number & " - " & Err.Description
  Err.Clear
End If

Call MyFunction("Param1", "Param2")
If Err.Number <> 0 Then
  MsgBox "Error: " & Err.Number & " - " & Err.Description
  Err.Clear
End If