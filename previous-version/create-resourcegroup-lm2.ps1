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

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern("^[a-zA-Z0-9-_]+$")]
    [string]$ResourceGroupName

)
$TranscriptPath = Join-Path $PSScriptRoot  "Create-resourcegroup-transcript.txt"
Start-Transcript -Path $TranscriptPath -Append


try {
    # Step 1
    Write-Verbose "Step 1: Starting the creation of the resource group creation script"
    Write-Debug "Step 1: Resource group name recived: $ResourceGroupName"
 
    # Step 2
    Write-Verbose "Step 2: Creating the resource group $ResourceGroupName in 'Central US'"
    Write-Debug "Step 2: Running the New-AzResourceGroup command"

    New-AzResourceGroup -Name $ResourceGroupName -Location "centralus" -ErrorAction Stop
    
    # Step 3
    Write-Verbose "Step 3: Resource group creation completed"
    Write-Debug "Step 3: The command finished without an error"

    Write-Host "Resource group '$ResourceGroupName' created successfully in 'Central US'."
}
catch {
    Write-Error "Failed to create resource group '$ResourceGroupName'. Error: $_"
}

finally {
    Write-Host "Script completed."
    Stop-Transcript
}