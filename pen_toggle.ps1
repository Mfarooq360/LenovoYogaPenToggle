$deviceName = "HID-compliant pen"
$device = Get-PnpDevice | Where-Object { $_.FriendlyName -like "*$deviceName*" }

if ($device.Status -eq "OK") {
    Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    Write-Host "Device disabled."
} else {
    Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    Write-Host "Device enabled."
}