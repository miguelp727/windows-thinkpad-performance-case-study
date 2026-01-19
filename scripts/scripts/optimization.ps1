Write-Host "=== WINDOWS PERFORMANCE OPTIMIZATION ===" -ForegroundColor Cyan

# High performance power plan
Write-Host "Setting High Performance power plan..."
powercfg -setactive SCHEME_MIN

# Disable SysMain (Superfetch)
Write-Host "Disabling SysMain..."
Stop-Service SysMain -Force
Set-Service SysMain -StartupType Disabled

# Disable Windows Search indexing
Write-Host "Disabling Windows Search..."
Stop-Service WSearch -Force
Set-Service WSearch -StartupType Disabled

# Reduce visual effects
Write-Host "Optimizing visual effects..."
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" `
/v VisualFXSetting /t REG_DWORD /d 2 /f | Out-Null

Write-Host "`n=== OPTIMIZATION COMPLETE ===" -ForegroundColor Green
Write-Host "Restart required." -ForegroundColor Red
