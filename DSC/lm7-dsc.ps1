Configuration PelinBaseline
{
Node localhost
{
WindowsFeature TelnetClient
{
Name = "Telnet-Client"
Ensure = "Present"
}

 File BaselineFolder
{
DestinationPath = "C:\PelinBaseline"
Type = "Directory"
Ensure = "Present"
}
}
}