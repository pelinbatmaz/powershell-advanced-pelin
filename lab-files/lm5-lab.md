# LM5 Lab

# Task 1 - Module Structure 
Created the NWTC.ResourceGroups module folder and added the Public, Private, Tests, Logs, and Docs folders. I also created the NWTC.ResourceGroups.psm1 file and copied my existing resource group function into the Public folder as New-TestResourceGroup.ps1.

# Task 2 - Script Module 
Configured NWTC.ResourceGroups.psm1 to load PowerShell files from the Public folder using $PSScriptRoot. I tested the module with Import-Module and it imported without errors.

# Task 3 - Module Manifest
Created the NWTC.ResourceGroups.psd1 module manifest using New-ModuleManifest. I set the author, module version to 1.0.0, and added a description for the module.

# Task 4 - Export Module Members
Used Export-ModuleMember to export the public function from the module. I re-imported the module and used Get-Command to verify that New-TestResourceGroup was available.

# Task 5 - Private Helper Function
Created a private helper function called Write-ModuleLog to handle logging. I updated New-TestResourcceGroup to use helper insted of Start-Transcript. I tested the logging and verified that the log file was created in the Logs folder. I also confirmed that Write-ModuleLog stays private and only New-TestResourceGroup is exported.

# Task 6 - Module Testing
Tested the module using ResourceGroupName and ProjectID. I also tested multiple ProjectID values through the pipeline and all three values were processed correctly. I used WhatIf so no actual resource groups were created. I also verified that the private logging function creates log files in the Logs folder.

# Task 7 - Prepare for Distribution
Updated the documentation for the function, module, and main repository. I added the module purpose, features, installation instructions, usage examples, and version information. I also updated the function header with the author, version and date.