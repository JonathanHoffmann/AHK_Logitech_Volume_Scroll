#MaxThreadsPerHotkey 3
#InputLevel 7
#CommentFlag //

I_Icon = E:\Programming\Autohotkey scripts\Volume logitech\logo.png
ICON [I_Icon]                        //Changes a compiled script's icon (.exe)
if I_Icon <>
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%   //Changes menu tray icon 

Scrolled := false

F23 up::
{
    if(Scrolled)
    {
        Scrolled := false
    }
    else
    {
        send, #{Tab}
    }
    return
}

F23 & WheelUp::
{
    Scrolled := true
    Send {Volume_Up 2}
    return
}

F23 & WheelDown::
{
    Scrolled := true
    Send {Volume_Down 2}
    return
}

// F7::
// Sleep 1000
// Send {F23}
// return