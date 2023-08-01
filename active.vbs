Set objFSO = CreateObject("Scripting.FileSystemObject")
currentDir = objFSO.GetAbsolutePathName(".")
parentDir = objFSO.GetParentFolderName(currentDir)

filePath = objFSO.BuildPath(parentDir, "\nghelen\active.bat")

CreateObject("Wscript.Shell").Run Chr(34) & filePath & Chr(34), 0, True
