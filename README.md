# powershell-advanced-pelin

# New-TestResourceGroup Function
The New-TestResourceGroup function creates Azure resource groups in the Central US location. It supports parameter sets, custom or default tags, pipeline input, WhatIf and Confirm, verbose feedback, bulk processing, and execution statistics.

# NWTC.ResourceGroups Module

In LM5, I converted New-TestResourceGroup into a reusable PowerShell module called NWTC.ResourceGroups.

The module includes:

- Public New-TestResourceGroup function
- Private Write-ModuleLog helper function
- Logging support
- Module manifest
- WhatIf support
- Pipeline and multiple value processing
- Documentation and testing

The module files are located in the NWTC.ResourceGroups folder.

# LM6 Update

The NWTC.ResourceGroups module was updated to version 1.1.0

Changes include:
- Added Get-ResourceGroupSummary
- Added changelog and release notes
- Tested the updated module
- Packaged version 1.1.0 for distribution