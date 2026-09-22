<#
.SYNOPSIS
Writes messages to a module log file.

.DESCRIPTION
Creates and adds log messages with a timestamp and log level.

.PARAMETER Message
The message to write to the log.

.PARAMETER Level
The level of the log message.

.PARAMETER LogFile
The path to the log file.
#>

function Write-ModuleLog {
param (
[Parameter(Mandatory)]
[string]$Message,

    [Parameter(Mandatory)]
    [string]$LogFile,

    [ValidateSet("INFO", "WARN", "ERROR")]
    [string]$Level = "INFO"
)

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$logMessage = "$timestamp [$Level] $Message"

Add-Content -Path $LogFile -Value $logMessage

}