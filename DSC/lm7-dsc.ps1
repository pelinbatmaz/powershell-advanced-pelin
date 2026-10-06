Configuration PelinBaseline
{
Node localhost
{
WindowsFeature TelnetClient
{
Name = "Telnet-Client"
Ensure = "Present"
}
}
}