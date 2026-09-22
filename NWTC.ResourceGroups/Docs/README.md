# NWTC.ResourceGroups

# Module Purpose

NWTC.ResourceGroups is a PowerShell module used to create and manage test Azure resource groups. It packages the New-TestResourceGroup function into a reusable module.

# Features

- Create test Azure resource groups by resource group name
- Create resource group names using a ProjectID
- Supports pipeline input
- Supports multiple values
- Supports WhatIf
- Creates log files using a private logging function

# Installation

Download or clone the repository and import the module using:

Import-Module .\NWTC.ResourceGroups.psm1

# Usage Examples

Create a resource group using a name:

New-TestResourceGroup -ResourceGroupName "rg-test" -WhatIf

Create a resource group using a ProjectID:

New-TestResourceGroup -ProjectID "1001" -WhatIf

Process multiple ProjectIDs through the pipeline:

"1001","1002","1003" | New-TestResourceGroup -WhatIf

# Version

Version: 1.0.0