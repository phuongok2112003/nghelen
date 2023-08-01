Set objFSO = CreateObject("Scripting.FileSystemObject")
currentDir = objFSO.GetAbsolutePathName(".")
parentDir = objFSO.GetParentFolderName(currentDir)

Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = parentDir

CreateObject("Wscript.Shell").Run (objShell.CurrentDirectory&"\nghelen\active.bat"), 0, True
