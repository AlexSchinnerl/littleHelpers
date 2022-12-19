Clear-Content .\output.txt #clear output File
$data = Get-Content -Path .\input.txt # read content from input File
$data = $data -replace "[^0-9]" # delete each char. that is no number
# $data = $data -replace "\n","" # clear breaks - ?
# Write-Output $data
$mail = $data | ForEach-Object{"K$_@students.jku.at; "} # create mail adress
# Write-Output $mail
$mail | Out-File -FilePath .\output.txt -Append -NoNewline # write mail adress in output file NB! NoNewLine