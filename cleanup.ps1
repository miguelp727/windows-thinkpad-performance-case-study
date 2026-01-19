Write-Host "=== WINDOWS 10 DEEP CLEAN ===" -ForegroundColor Cyan

# System File Checker
Write-Host "`nRunning SFC..." -ForegroundColor Yellow
sfc /scannow

# DISM repair
Write-Host "`nRunning DISM..." -ForegroundColor Yellow
DISM /Online /Cleanup-Image /RestoreHealth

# Disk check (safe scan)
Write-Host "`nChecking disk..." -ForegroundColor Yellow
chkdsk C: /scan

# Clean TEMP folders
Write-Host "`nCleaning TEMP files..." -ForegroundColor Yellow
Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

# Empty Recycle Bin
Write-Host "`nEmptying Recycle Bin..." -ForegroundColor Yellow
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

Write-Host "`n=== CLEANUP COMPLETE ===" -ForegroundColor Green
