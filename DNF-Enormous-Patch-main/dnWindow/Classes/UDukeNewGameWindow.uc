/*******************************************************************************
 * UDukeNewGameWindow generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeNewGameWindow extends UDukeFramedWindow;

var bool bLocked;

function Close(optional bool bByParent)
{
    // End:0x0B
    if(bLocked)
    {
        return;
    }
    super.Close(bByParent);
    return;
}

defaultproperties
{
    ClientClass='UDukeNewGameWindowSC'
    WindowTitle="<?int?dnWindow.UDukeNewGameWindow.WindowTitle?>"
}