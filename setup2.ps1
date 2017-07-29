param (
    [string]$steam_username = "",
    [string]$steam_password = "",
    [switch]$manual_install = $false
)

$script_name = "utils.ps1"
. "C:\$script_name"

Disable-ScheduleWorkflow
Disable-Devices
Enable-Audio
Install-VirtualAudio
Add-DisconnectShortcut
Install-Steam
if (!$manual_install) {
    Set-Steam $steam_username $steam_password
}
Add-DummyUser
Restart-Computer