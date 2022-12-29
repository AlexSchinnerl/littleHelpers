# delete something from filename
# Get-ChildItem -Path "." | Rename-Item -NewName {$_.Name -replace "193137-", ""}


$suffix = Read-Host "enter suffix"

$items = Get-ChildItem "*.txt" -Path "./files2change" 
$items | Rename-Item -NewName {$suffix + "_" + $_.Name}