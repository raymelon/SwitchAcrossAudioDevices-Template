# install https://github.com/frgnca/AudioDeviceCmdlets first
# and do this too Set-ExecutionPolicy RemoteSigned (from https://stackoverflow.com/a/4038991/4895040)

$deviceCurrent = (Get-AudioDevice -Playback) | Out-String

$device1ID = '<put device id here>'
$device2ID = '<put device id here>'

Write-Host $deviceCurrent

if ($deviceCurrent -Like '*<text that matches the name of the device>*') {
	Write-Host 'Switching to Device 2'
	Set-AudioDevice -ID $device2ID
} else {
	Write-Host 'Switching to Device 1'
	Set-AudioDevice -ID $device1ID
}
