# LM1 Lab
# Task 1: Evaluate Existing Script Quality

The original script has several issues:

1. **The variable name is unclear.** The variable `$a` does not expalin what information it stores. This can make the script difficult for other admministrators to understand and maintain.

2. **The script does not validate user input.** `Read-Host` accepts any value entered by the user. Invalid inofrmation could cause the script to fail or create resources incorrectly.

3. **The script does not include error handling.** If the azure command fails, the script does not explain the problem or handle the failure properly. This could mkae troubleshhoting difficult.

4. **The script does not include docummentation or comments.** Other administrators may not understand the script's purpose or how to use it.

5. **The script does not create a log.** Without logging, administrators connot easily review what happend after the script was executed.


# Task 2: Create Professional Documentation

**Purpose:** The purpose of the script is to create a new Azure resource group.

**Parameter documented:** ResourceGroupName, whcih represents the name of the Azure resource group.

**Sample execution:**

`.\create-resourcegroup.ps1 -ResourceGroupName "MyResourceGroup" -Location "centralus"`

# Task 3: 

**Validation method selected:** ValidatePattern 

**Valid input:** PelinLM1RG

**Invalid input:** Pelin Lab!

**Results of testing:** The valid input passed the validation and allowed the script to continue. The invalid input was rejected because it contained a pace and an exclamation mark, which were not allowed by the validation pattern


# Task 4: Implement Structured Error Handling

**Error generated:** The script attemted to create a resource group wothout an active Azure connection.

**Error message received:** Run Connect-AzAccount to login.

**How the Catch block handled the failure:** The catch block displayed a clear error explaining that the resource group could not be created because Azure was not connected

**Finally:** Block displayed "Script completed." This occured even though the command failed.

# Task 5: Add Loggining and Improve Readability

**Transcript file location:**
`C:\powershell-advanced-pelin\LM1\Create-resourcegroup-transcript.txt`

**Example transcript entry:**
`Failed to create resource group 'PelinLM1RG'. Error: Run Connect-AzAccount to login.`

**Two readability improvements:**

1. I replaced the unclear veriable $a with the descriptive variable  $ResourceGrroupName 
2. I added consistent indentation and comments to make the script easier to read and understand.

