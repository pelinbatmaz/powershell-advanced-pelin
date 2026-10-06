# LM7 Lab - DSC

# Task 1 - DSC Configuration Example

Configuration Name: CompanyBaseLine

Node: localhost

Resource 1: File AutomationFolder
- Creates the C:\Automation directory and makes sure it is present.

Resource 2: File ConfigFile
- Creates C:\Automation\Config.txt with the test "NWTC Standard Configuration" 
- It depens on AutomationFolder, so the folder is created before the file.
