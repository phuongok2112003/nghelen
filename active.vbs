Set objFSO = CreateObject("Scripting.FileSystemObject")
currentDir = objFSO.GetAbsolutePathName(".")
parentDir = objFSO.GetParentFolderName(currentDir)

Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = parentDir
MsgBox objShell.CurrentDirectory 
CreateObject("Wscript.Shell").Run "nghelen\active.bat", 0, True
