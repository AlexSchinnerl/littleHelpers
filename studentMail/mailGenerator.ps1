Clear-Content .\output.txt #clear output File
$data = Get-Content -Path .\input.txt # read content from input File
$data = $data -replace "[^0-9]" # delete each char. that is no number
$mail = $data | ForEach-Object{"K"+$_+"@students.jku.at; "} # create mail adress
$mail | Out-File -FilePath .\output.txt -Append -NoNewline # write mail adress in output file NB! NoNewLine
$data = Get-Content -Path .\output.txt
$mail = $data.Substring(0,$data.Length-2) # delete last 2 characters ("; ")
Write-Output $mail
Clear-Content .\output.txt #clear output File
$mail | Out-File -FilePath .\output.txt -Append -NoNewline # write mail adress in output file