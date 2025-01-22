# Unhandled Error in VBScript Function

This example demonstrates a common error in VBScript:  an unhandled error raised using `Err.Raise`. When `MyFunction` receives empty parameters, it raises an error. However, if this error is not caught using an `On Error Resume Next` or `On Error GoTo` statement, the script will terminate immediately without any further execution.

## How to reproduce the bug
1. Copy the code in `bug.vbs`.
2. Run the script.
3. Observe the script abruptly stopping without providing any detailed error messages.

## How to fix the bug
The solution (`bugSolution.vbs`) demonstrates the proper way to handle errors using `On Error Resume Next` and checking the error number.   This allows the script to continue executing even if an error occurs and to provide more informative error messages to the user.