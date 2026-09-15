# LM4 Lab

# Task 1 - Evaluate Existing Functions

# Strenghts
1. The function validates the resource group name before trying to create it.
2. It uses SupportsShouldProcess, so it can safely use WhatIf before making changes.
3. It uses error handling and returns information about the resource group.

# Areas for Improvement

1. The function currently only has one way to provide the resource group name.
2. It could provide better feedback while it is running.
3. It could be improved to handle multiple resource groups more efficiently.

# Task 2 - Parameter Sets
I added two parameter sets, ResourceGroupName and ProjectID, ResourceGroupName allows me to enter the resource group name directly, while ProjectID automatically creates a name using RG followed by the project ID. I tested both parameter sets successfully using WhatIf.

# Task 3 - Begin, Process, End
I added Begin, Process, and End blocks to the function. Begin handles the startup, Process handles each resource group passed through the pipeline, and End handles the completion message. I tested three project IDs through the pipeline and all three were processed successfully.

# Task 4 - User Feedback
I added Write-Verbose messages to provide more information while the function runs. The messages show when the function starts, when validation succeeds, when resource group creation is attempted, and when creation succeeds. I tested the function using the Verbose switch.

# Task 5 - Bulk Processing
## 

I created ResourceGroups.txt with five project IDs and used Get-Content to send them through the pipeline.

Objects processed: 5
Successfully created: 0 (tested using WhatIf)
Warnings generated: 0

The function successfully processed all five project IDs.

# Task 6 - Execution Statistics 
I added counters to track the function execution.

Total Processed: 5
Resources Created: 0
Resources Skipped: 5
Errors Encountered: 0

The resources were skipped because I tested the function using WhatIf.