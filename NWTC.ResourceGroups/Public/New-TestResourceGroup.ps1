function New-TestResourceGroup {
<#
.SYNOPSIS
Creates a new Azure resource group.

.DESCRIPTION
Creates Azure resource groups using a resource group name or project ID.
Supports pipeline input, tags, WhatIf, verbose output, and bulk processing.

.PARAMETER ResourceGroupName
Specifies the name of the resource group to create.

.PARAMETER ProjectID
Specifies a project ID and creates the resource group name using rg-ProjectID.

.PARAMETER Tags
Specifies tags for the resource group.

.NOTES
Author: Pelin Batmaz
Version: 1.0
Date: September 22, 2026

.EXAMPLE
New-TestResourceGroup -ResourceGroupName "PelinLM4RG" -WhatIf

.EXAMPLE
New-TestResourceGroup -ProjectID 1004 -WhatIf -Verbose

.EXAMPLE
"1001","1002","1003" | New-TestResourceGroup -WhatIf
#>

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true, ParameterSetName = "ResourceGroupName")]
    [ValidatePattern("^[a-zA-Z0-9-_]+$")]
    [string]$ResourceGroupName,

    [Parameter(Mandatory = $true, ParameterSetName = "ProjectID", ValueFromPipeline = $true)]
    [string]$ProjectID,
    [hashtable]$Tags = @{Department="IT"; Environment="Test"}

)
begin {
    Write-Verbose "Starting New-TestResourceGroup fucntion."

    $TotalProcessed = 0
    $ResourcesCreated = 0
    $ResourcesSkipped = 0
    $ErrorsEncountered = 0

    $LogFilePath ="$PSScriptRoot\..\Logs\New-TestResourceGroup-Log-$(Get-Date -Format 'yyyyMMdd-HHmmss').txt"
    Write-ModuleLog -Message "Starting the creation of Resource Group..." -Level INFO -LogFile $LogFilePath
}
process {
    $TotalProcessed++

    if ($PSCmdlet.ParameterSetName -eq "ProjectID") {
    $ResourceGroupName = "rg-$ProjectID"
}

Write-Verbose "Validation successful for resource group '$ResourceGroupName'."


$result = [PSCustomObject]@{
     ResourceGroupName = $ResourceGroupName 
     Location = 'centralus'
      Status = 'Not Created' 
      Tags = $Tags 
      Timestamp = Get-Date
}
try {
    Write-Verbose "Attempting to create resource group '$ResourceGroupName'"
    if ($PSCmdlet.ShouldProcess(
         "Resource Group '$ResourceGroupName'", 
         "Create" 
         )) { 
    New-AzResourceGroup -Name $ResourceGroupName -Location "centralus" -Tag $Tags -ErrorAction Stop
    $result.Status = "Created"
    $ResourcesCreated++
    Write-Verbose "Resource group '$ResourceGroupName' created successfully."
    Write-Host "Resource group '$ResourceGroupName' created successfully in 'Central US'."
}
else {
    $ResourcesSkipped++
}

}
catch {
    $ErrorsEncountered++
    Write-Error "Failed to create resource group '$ResourceGroupName'. Error: $_"
}

$result
}
end{ 
    Write-Host "Execution Summary:"
    Write-Host "Total Processed: $TotalProcessed"
    Write-Host "Resources Created: $ResourcesCreated"
    Write-Host "Resources Skipped: $ResourcesSkipped"
    Write-Host "Errors Encountered: $ErrorsEncountered"
    Write-Host "Script completed."
    
    Write-ModuleLog -Message "Finished processing the creation of Resource Group." -Level INFO -LogFile $LogFilePath
}
}