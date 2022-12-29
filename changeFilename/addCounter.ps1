# delete something from filename
# Get-ChildItem -Path "." | Rename-Item -NewName {$_.Name -replace "193137-", ""}


# $suffix = Read-Host "enter suffix"
$count = 1
$items = Get-ChildItem "*.txt" -Path "./files2change" 
$items | Rename-Item -NewName {$_.BaseName + $Script:count++ + $_.Extension} # adds counter between filename and extention