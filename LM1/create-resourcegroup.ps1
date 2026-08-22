<#
.SYNOPSIS
    Creates a new Azure Resource Group
.DESCRIPTION
    This script creates a new Azure Resource Group with the specified name and location
.PARAMETER ResourceGroupName
    The name of the resource group to create
.PARAMETER Location
    The location of the resource group
.EXAMPLE
    .\create-resourcegroup.ps1 -ResourceGroupName "PelinLM1RG" 
#>


param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern("^[a-zA-Z0-9-_]+$")]
    [string]$ResourceGroupName

)
$TranscriptPath = Join-Path $PSScriptRoot  "Create-resourcegroup-transcript.txt"
Start-Transcript -Path $TranscriptPath -Append
try {
    # Create the resource group
    New-AzResourceGroup -Name $ResourceGroupName -Location "centralus" -ErrorAction Stop
    Write-Host "Resource group '$ResourceGroupName' created successfully in 'Central US'."
}
catch {
    Write-Error "Failed to create resource group '$ResourceGroupName'. Error: $_"
}

finally {
    Write-Host "Script completed."
    Stop-Transcript
}