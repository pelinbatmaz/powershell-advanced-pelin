# LM7 Lab - DSC

# Task 1 - DSC Configuration Example

Configuration Name: CompanyBaseLine

Node: localhost

Resource 1: File AutomationFolder
- Creates the C:\Automation directory and makes sure it is present.

Resource 2: File ConfigFile
- Creates C:\Automation\Config.txt with the test "NWTC Standard Configuration" 
- It depens on AutomationFolder, so the folder is created before the file.

# Task 2 - My DSC Configuration

Configuration Name:
PelinBaseline

Node:
localhost

Resource:
WindowsFeature - TelnetClient

What It Does:
This configuration makes sure the Telnet Client Windows feature is installed on the system.

# Task 3 - MOF File

File Location:
C:\powershell-advanced-pelin\DSC\PelinBaseline\localhost.mof

File Purpose:
The MOF file contains the compiled DSC configuration that PowerShell uses to apply the desired settings.

Information Observed:
The MOF file contains the configuration for localhost and the WindowsFeature resource for Telnet Client.


# Task 4 - Apply the Configuration

Result: PelinBaseline configuration was applied succesfully. DSC installed the Telnet Client Windows feature and the installation succeeded.

# Task 5 - Validate Compliance

Test-DscConfiguration returned True, showing that the system is compliant with the desired configuration.

Get-DscConfiguration showed that PelinBaseline is active and the Telnet Client feature is present.