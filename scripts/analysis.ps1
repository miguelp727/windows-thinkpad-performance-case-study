Write-Host "=== SYSTEM PERFORMANCE ANALYSIS ===" -ForegroundColor Cyan

# CPU usage (top processes)
Write-Host "`nCPU Usage (Top processes):" -ForegroundColor Yellow
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 Name, CPU

# RAM usage
Write-Host "`nMemory Usage:" -ForegroundColor Yellow
Get-CimInstance Win32_OperatingSystem | Select-Object `
@{Name="Total RAM (GB)";Expression={[math]::Round($_.TotalVisibleMemorySize/1MB,2)}},
@{Name="Free RAM (GB)";Expression={[math]::Round($_.FreePhysicalMemory/1MB,2)}}

# Disk usage
Write-Host "`nDisk Usage:" -ForegroundColor Yellow
Get-Counter '\PhysicalDisk(_Total)\% Disk Time'

# Drive type (SSD or HDD)
Write-Host "`nDrive Type:" -ForegroundColor Yellow
Get-PhysicalDisk | Select MediaType, FriendlyName

# Startup programs
Write-Host "`nStartup Programs:" -ForegroundColor Yellow
Get-CimInstance Win32_StartupCommand | Select Name, Command, Location

Write-Host "`n=== ANALYSIS COMPLETE ===" -ForegroundColor Green
