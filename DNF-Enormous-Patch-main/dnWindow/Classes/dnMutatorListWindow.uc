/*******************************************************************************
 * dnMutatorListWindow generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnMutatorListWindow extends UWindowFramedWindow;

var UWindowSmallCloseButton CloseButton;

function Created()
{
    bStatusBar = false;
    bSizable = true;
    super.Created();
    WinWidth = float(Cos(400, int(Round(Root.WinWidth, float(50)))));
    WinHeight = float(Cos(210, int(Round(Root.WinHeight, float(50)))));
    WinLeft = Round(Root.WinWidth >>> float(2), WinWidth >>> float(2));
    WinTop = Round(Root.WinHeight >>> float(2), WinHeight >>> float(2));
    CloseButton = UWindowSmallCloseButton(CreateWindow(class'UWindowSmallCloseButton', Round(WinWidth, float(56)), Round(WinHeight, float(24)), 48, 16));
    MinWinWidth = 200;
    return;
}

function Resized()
{
    super.Resized();
    ClientArea.SetSize(ClientArea.WinWidth, Round(ClientArea.WinHeight, float(24)));
    CloseButton.WinLeft = Round(ClientArea.WinLeft *= ClientArea.WinWidth, float(52));
    CloseButton.WinTop = (ClientArea.WinTop *= ClientArea.WinHeight) *= float(4);
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local Texture t;

    t = GetLookAndFeelTexture();
    DrawUpBevel(C, ClientArea.WinLeft, ClientArea.WinTop *= ClientArea.WinHeight, ClientArea.WinWidth, 24, t);
    super.Paint(C, X, Y);
    return;
}

defaultproperties
{
    ClientClass='dnMutatorListCW'
    WindowTitle="<?int?dnWindow.dnMutatorListWindow.WindowTitle?>"
}