# LM4: Enterprise Function Desing and Scalability 

# Project Purpose 
The purpose of this project is to create and improve a PowerShell advanced function for managing Azure resource groups. The function now supports parameter sets, pipeline input, WhatIf, verbose messages, bulk processing, and execution statistics.

# Files Included
- `create-resourcegroup.ps1` -Contains the New-TestResourceGroup advanced function.
- `create-resourcegroup.test.ps1` -Uses Pester to test the function.
- `ResourceGroupTest` -Contains project IDs used for bulk processing.
- `Create-resourcegroup-transcript.txt` -Records PowerShell execution output.
- `lm4-lab.md` -Documents the LM4 lab work and result.
- `README.md` -Explains the project and its files.


# Lessons Learned
I learned how to turn a PowerShell script into a more advanced function. I added parameter sets, pipeline support, WhatIf, verbose messages, bulk processing, and execution statistics. These features make the function easier and safer to use when managing multiple Azure resources.


# LM5 Update

For LM5, I converted New-TestResourceGroup into the NWTC.ResourceGroups PowerShell module. The function now uses a private Write-ModuleLog helper for logging and was tested with ResourceGroupName, ProjectID, pipeline input, multiple values, and WhatIf.



# LM6 Update

The NWTC.ResourceGroups module was updated to version 1.1.0

Changes include:
- Added Get-ResourceGroupSummary
- Added changelog and release notes
- Tested the updated module
- Packaged version 1.1.0 for distribution

