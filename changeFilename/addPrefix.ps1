# delete something from filename
# Get-ChildItem -Path "." | Rename-Item -NewName {$_.Name -replace "193137-", ""}


$prefix = Read-Host "enter prefix"

$items = Get-ChildItem "*.txt" -Path "./files2change" 
$items | Rename-Item -NewName {$prefix + "_" + $_.Name}