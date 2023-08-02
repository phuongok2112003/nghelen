# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Start-Process -Wait powershell -verb runas -ArgumentList "Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windowns\CurrentVersion\Policies\System -Name ConsentPromptBehaviorAdim -Value 0"
# if ( -not (Get-command scoop -errorAction SilentlyContinue)){
#    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
#    irm get.scoop.sh | iex
# }

# if ( -not (Get-command git -errorAction SilentlyContinue)){
#   scoop install git
# }

# if ( -not (Get-command bucket add extras -errorAction SilentlyContinue)){
#   scoop bucket add extras
# }
# scoop update

if ( -not (Get-command python -errorAction SilentlyContinue)){
  
  scoop install python
  cd "~\scoop\apps\python\current"
  pip install os
  pip install datetime
  pip install time
  pip install selenium

}else{
   pip install os
  pip install datetime
  pip install time
  pip install selenium

}

$destinationFolder = "~\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"

# Kiểm tra xem thư mục nguồn có tồn tại hay không
if (Test-Path $PSScriptRoot) {
    # Kiểm tra xem thư mục đích đã tồn tại hay chưa
    if (!(Test-Path $destinationFolder)) {
        # Nếu thư mục đích chưa tồn tại, tạo mới thư mục đích
        New-Item -ItemType Directory -Path $destinationFolder -Force | Out-Null
    }

    # Copy thư mục từ nguồn đến đích
    Copy-Item  -Path $PSScriptRoot -Destination $destinationFolder -Recurse -Force
   
} 


# Đường dẫn thư mục cần di chuyển
$sourceFolder =  $PSScriptRoot +"\active.vbs"
$dich= $destinationFolder+"\Startup"
# Write-Host "Thư mục hiện tại đang đứng: $PSScriptRoot"
Copy-Item -Path $sourceFolder -Destination $dich -Force | Out-Null