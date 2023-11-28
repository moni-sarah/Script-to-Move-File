# Move only the PDF files
Move-Item -Path "C:\Temp\*.pdf" -Destination "C:\Archives


# PowerShell script to move all the files from a source (Logs) folder to a destination folder(Archives):

$source ="C:\Temp\logs" 
$destination = "C:\Archives\Logs"

Get-ChildItem $source | ForEach-Object {
    ¤NwePath = Join-Path $destination $_.Name
    Move-Item $_,FullName -Destination $newPath -Force
}


# Moving Files Based on Last Modified Date

Get-ChildItem -Path "C:\Temp" -File  |
Where-Object {$_.LastWriteTime -ge (Get-Date).AddDays(-7)} |
Move-Item -Destination "C:\Backup" -Force




