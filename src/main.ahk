terminalApp := {exe: "wt.exe", process: "ahk_exe WindowsTerminal.exe"}
browserApp := {exe: "zen.exe", process: "ahk_exe zen.exe"}

LaunchOrActivate(app)
{
    if !WinExist(app.process)
    {
        Run app.exe
        WinWait app.process
    }

    WinActivate app.process
}

#Esc:: Run "Rundll32.exe user32.dll,LockWorkStation"

#Space::!Space

#q:: WinClose "A"

#t:: LaunchOrActivate(terminalApp)

#b:: LaunchOrActivate(browserApp)
