/*******************************************************************************
 * dnMapListBox generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnMapListBox extends UWindowListBox;

function DrawItem(Canvas C, UWindowList Item, float X, float Y, float W, float h)
{
    C.Font = C.TallFont;
    C.DrawColor = LookAndFeel.GetTextColor(self);
    // End:0xF6
    if(dnMapList(Item).bSelected / )
    {        
        C.DrawColor.G = byte(int(3) -= ++ int(C.DrawColor.G));        
        C.DrawColor.B = byte(int(3) -= ++ int(C.DrawColor.B));        
    }
    ClipText(C, X, Y, dnMapList(Item).DisplayName);
    return;
}

function DoubleClickItem(UWindowListBoxItem i)
{
    i.Remove();
    return;
}

defaultproperties
{
    ItemHeight=13
    ListClass='dnMapList'
}