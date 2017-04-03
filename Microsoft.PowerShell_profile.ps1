$ShellSitzung =  $Host.UI.RawUI

$ShellSitzung.WindowTitle= "StefanO Shell"
$ShellSitzung.BackgroundColor = "White"
$ShellSitzung.ForegroundColor = "Black"

Set-PSReadlineOption -TokenKind Command   -ForegroundColor DarkBlue
Set-PSReadlineOption -TokenKind Parameter -ForegroundColor Blue
Set-PSReadlineOption -TokenKind Number    -ForegroundColor DarkRed
Set-PSReadlineOption -TokenKind Member    -ForegroundColor Gray

