# LM2 Lab: Testing, Debugging, Source Control
# Task1 : Script Error

Original command: 
`Get-Process -Name explore`

Error Message:
`Get-Process: Cannot find a process with the name "explore". Verify the process name and call the cmdlet again.`

Cause of Error:
The error occurred because the procces name was type incorrectly. The Windows Explorer process is named explorer, not explore

Corrected Command:
`Get-Process -Name explorer`

# Task 2: Debugging Output

# Example of Verbose Output

 # Step 1
   `Verbose: Step 1: Starting the creation of the resource group creation script`
    `Verbose: Step 2: Creating the resource group $ResourceGroupName in Central US`
    `Verbose: Step 3: Resource group creation completed`
    
 # Example of Debug Output

  `Debug: Step 1: Resource groupname recived: PelinLM2DebugRg`
  `Debug: Step 2: Running the New-AzResourceGroup command`
  `Debug:Step 3: The command finished without an error `
  
  # Observed Difference
  Verbose output showed the main steps and status of the script without stoping it. Debug output provide more technical details about the commands being processed and paused the script for conformation. Debug was more useful for closely troubleshooting hpw the script was running.



  # Task 3: PEster Test

  Test name:
  `Verifies that the resource group was created`

  Expected results:

  The test should find the PelinLM2DebugRG resource group in azure and confrim that its name matches the expected resource group name

  Actual Result:

  The test passed successfully. Pester reported 1 test passed and 0 test failed.