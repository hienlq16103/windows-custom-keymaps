#Esc:: Run "Rundll32.exe user32.dll,LockWorkStation"

#Space::!Space

#q:: WinClose "A"

#t::
{
  if !WinExist("ahk_exe WindowsTerminal.exe")
  {
    Run "wt.exe"
    WinWait "ahk_exe WindowsTerminal.exe"
  }

  WinActivate "ahk_exe WindowsTerminal.exe"
}

#b::
{
    if !WinExist("ahk_exe zen.exe")  ; Replace with actual class
    {
        Run "zen.exe"
        WinWait "ahk_exe zen.exe"
    }
    WinActivate "ahk_exe zen.exe"
}

