$ShellSitzung =  $Host.UI.RawUI

$ShellSitzung.WindowTitle= "StefanO Shell"
$ShellSitzung.BackgroundColor = "White"
$ShellSitzung.ForegroundColor = "Black"
if((Get-Command Set-PSReadLineOption).Version.Major -lt 2)
{
Write-Host "erster Teil"
Set-PSReadlineOption -TokenKind Command   -ForegroundColor DarkBlue
Set-PSReadlineOption -TokenKind Parameter -ForegroundColor Blue
Set-PSReadlineOption -TokenKind Number    -ForegroundColor DarkRed
Set-PSReadlineOption -TokenKind Member    -ForegroundColor Gray
}
else
{
Write-Host "zweiter Teil"
Set-PSReadLineOption -Colors @{"Parameter" = [ConsoleColor]::Blue
                               "Command"   = [Consolecolor]::DarkBlue
                               "Number"    = [Consolecolor]::DarkRed
                               "Member"    = [ConsoleColor]::Gray
                               "String"    = [Consolecolor]::DarkGreen
                               "Comment"   = [ConsoleColor]::Green
                               "Keyword"   = [ConsoleColor]::Magenta
                               "None"      = [ConsoleColor]::Black
                               "Operator"  = [ConsoleColor]::DarkMagenta
                               "Type"      = [ConsoleColor]::Cyan
                               "Variable"  = [ConsoleColor]::DarkCyan}
}
