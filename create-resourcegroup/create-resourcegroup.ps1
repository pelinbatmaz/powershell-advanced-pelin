function New-TestResourceGroup {
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

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
    [ValidatePattern("^[a-zA-Z0-9-_]+$")]
    [string]$ResourceGroupName,

    [hashtable]$Tags = @{Department="IT"; Environment="Test"}

)
$TranscriptPath = Join-Path $PSScriptRoot  "..\output\Create-resourcegroup-transcript.txt"
Start-Transcript -Path $TranscriptPath -Append
$result = [PSCustomObject]@{
     ResourceGroupName = $ResourceGroupName 
     Location = 'centralus'
      Status = 'Not Created' 
      Tags = $Tags 
      Timestamp = Get-Date
}
try {
    if ($PSCmdlet.ShouldProcess(
         "Resource Group '$ResourceGroupName'", 
         "Create" 
         )) { 
    
    New-AzResourceGroup -Name $ResourceGroupName -Location "centralus" -Tag $Tags -ErrorAction Stop
    $result.Status = "Created"
    Write-Host "Resource group '$ResourceGroupName' created successfully in 'Central US'."
}
}
catch {
    Write-Error "Failed to create resource group '$ResourceGroupName'. Error: $_"
}

finally {
    Write-Host "Script completed."
    Stop-Transcript
}
$result
}