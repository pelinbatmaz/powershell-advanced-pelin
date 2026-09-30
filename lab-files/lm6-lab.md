# LM6 Lab - Managing the Lifecycle of a PowerShell Module

# Task 1 - Current Module Version
Current Version: 1.0.0

Author: Pelin Batmaz

Description: Test resource group creation

Exported Commands:
- New-TestResourceGroup

# Task 2 - New Feature
Created a new public function called Get-ResourceGroupSummary

The function displays:
- Resource Group Name
- Location
- Tags

I tested the module with Get-Command and confirmed that Get-ResourceGroupSummary is included in the module


# Task 3 - Version Update

Updated module version from 1.0.0 to 1.1.0

This is a minor version update because a new feature was added without breaking the existing functionality.


# Task 4 - Changelog

Created CHANGELOG.md to document the module version history and changes between releases.


# Task 5 - Release Notes

Created RELEASENOTES.md to explain the new features, upgrade instructions, bug fixes, and known issues for version 1.1.0.


# Task 6 - Test the Upgrade

Imported the updated NWTC.ResourceGroups module and verified that version 1.1.0 loaded successfully.

Confirmed the exported commands with Get-Command and tested Get-ResourceGroupSummary successfully.


# Task 7 - Publish and Distribute 

Updated the READMEs.

Created the Relases folder and packaged version 1.1.0 as NWTC.ResourceGroups1.1.0.zip for distribution.