#Scripting Best Pratices

# Indentation: Use consistent indentation (e.g. 4 spaces) to improve readability
if ($true) {
    Write-Host "This is an example of proper indentation"
}

# Poor vs Good Script
# Poor Script
$a = Read-Host "Name"

New-AzResourceGroup -Name $a -Location "Central US"

