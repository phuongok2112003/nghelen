Set objFSO = CreateObject("Scripting.FileSystemObject")
currentDir = objFSO.GetAbsolutePathName(".")
parentDir = objFSO.GetParentFolderName(currentDir)

Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = parentDir

CreateObject("Wscript.Shell").Run Chr(34)& objShell.CurrentDirectory&"\nghelen\active.bat"& Chr(34), 0, True
