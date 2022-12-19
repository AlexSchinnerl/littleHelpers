Get-ChildItem

Write-Host "Test"
write-host "Test" -ForegroundColor Green
write-host "Test" -ForegroundColor Red

Read-Host "User-Eingabe: "

Get-Location
Set-Location C:\Users\Alex

Get-Date

Get-Process
Start-Process notepad
Start-Process calc

Get-LocalUser

ping 8.8.8.8
Test-Connection 8.8.8.8
Test-Connection 8.8.8.8 -Quiet


$var = 5
Write-Host "$var" -ForegroundColor Green
$var

$aps = Read-Host "Eingabe in Variable speichern"
Write-Host "User Antwort anzeigen lassen: $aps" -ForegroundColor Green


$colors = @()
$colors += "black"
$colors += "green"
$colors += "white"
$colors
$colors[0]
$colors[0..2]
$colors[-1]
$colors.count
