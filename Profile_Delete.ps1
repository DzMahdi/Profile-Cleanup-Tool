$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$excludedUsers = @("microagelocal", $currentUser)  # Ajouter les users a exclure du delete.

$profiles = Get-WmiObject -Class Win32_UserProfile | Where-Object {
    $_.LocalPath.split('\')[-1] -notin $excludedUsers -and
    -not $_.Special
}

foreach ($profile in $profiles) {
    $username = $profile.LocalPath.split('\')[-1]
    try {
        $profile.Delete()
        Write-Host "User profile for $username has been deleted."
    } catch {
        Write-Host "Failed to delete profile for $username."
    }
}
