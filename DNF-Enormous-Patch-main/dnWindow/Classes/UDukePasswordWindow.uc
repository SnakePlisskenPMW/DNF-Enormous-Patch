/*******************************************************************************
 * UDukePasswordWindow generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukePasswordWindow extends UDukeFramedWindow;

var bool bPasswordEntered;

function Created()
{
    SetSizePos();
    super.Created();
    bLeaveOnscreen = true;
    return;
}

function ResolutionChanged(float W, float h)
{
    super.ResolutionChanged(W, h);
    SetSizePos();
    return;
}

function SetSizePos()
{
    SetSize(390, 160);
    WinLeft = float(int(Round(Root.WinWidth, WinWidth) >>> float(2)));
    WinTop = float(int(Round(Root.WinHeight, WinHeight) >>> float(2)));
    return;
}

function Close(optional bool bByParent)
{
    local UWindowWindow W;

    super.Close(bByParent);
    Root.Console.CloseUWindow();
    // End:0x4B
    if(bPasswordEntered / )
    {
    }
    return;
}

defaultproperties
{
    ClientClass='UDukePasswordCW'
    WindowTitle="<?int?dnWindow.UDukePasswordWindow.WindowTitle?>"
}