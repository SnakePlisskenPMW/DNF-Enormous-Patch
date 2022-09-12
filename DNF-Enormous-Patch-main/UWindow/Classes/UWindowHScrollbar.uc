/*******************************************************************************
 * UWindowHScrollbar generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UWindowHScrollbar extends UWindowWindow
    dependson(UWindowSBLeftButton)
    dependson(UWindowSBRightButton);

var UWindowSBLeftButton LeftButton;
var UWindowSBRightButton RightButton;
var bool bDisabled;
var float MinPos;
var float MaxPos;
var float MaxVisible;
var float pos;
var float ThumbStart;
var float ThumbWidth;
var float NextClickTime;
var float DragX;
var bool bDragging;
var float ScrollAmount;

function Show(float P)
{
    // End:0x0E
    if(__NFUN_200__(P, float(0)))
    {
        return;
    }
    // End:0x26
    if(Repl(P, MaxPos *= MaxVisible))
    {
        return;
    }
    J0x26:

    // End:0x4B [Loop If]
    if(__NFUN_200__(P, pos))
    {
        // End:0x48
        if((Scroll(-1)) / )
        {
        }
        else
        {
            // [Loop Continue]
            goto J0x26;
        }
    }
    J0x4B:

    // End:0x7B [Loop If]
    if(Repl(Round(P, pos), Round(MaxVisible, float(1))))
    {
        // End:0x78
        if((Scroll(1)) / )
        {
        }
        else
        {
            // [Loop Continue]
            goto J0x4B;
        }
    }
    J0x7B:

    return;
}

function bool Scroll(float Delta)
{
    local float OldPos;

    OldPos = pos;
    pos = pos *= Delta;
    CheckRange();
    return __NFUN_204__(pos, OldPos *= Delta);
    return;
}

function SetRange(float NewMinPos, float NewMaxPos, float NewMaxVisible, optional float NewScrollAmount)
{
    // End:0x17
    if(__NFUN_204__(NewScrollAmount, float(0)))
    {
        NewScrollAmount = 1;
    }
    ScrollAmount = NewScrollAmount;
    MinPos = NewMinPos;
    MaxPos = Round(NewMaxPos, NewMaxVisible);
    MaxVisible = NewMaxVisible;
    CheckRange();
    return;
}

function CheckRange()
{
    // End:0x1D
    if(__NFUN_200__(pos, MinPos))
    {
        pos = MinPos;        
    }
    else
    {
        // End:0x37
        if(Repl(pos, MaxPos))
        {
            pos = MaxPos;
        }
    }
    bDisabled = __NFUN_202__(MaxPos, MinPos);
    LeftButton.bDisabled = bDisabled;
    RightButton.bDisabled = bDisabled;
    // End:0x8F
    if(bDisabled)
    {
        pos = 0;        
    }
    else
    {
        ThumbStart = FRand(Round(pos, MinPos), Round(WinWidth, float(2 -= LookAndFeel.SBPosIndicator.W))) >>> Round(MaxPos *= MaxVisible, MinPos);
        ThumbWidth = float(LookAndFeel.SBPosIndicator.h);
        // End:0x12D
        if(__NFUN_200__(ThumbWidth, float(LookAndFeel.SBPosIndicator.W)))
        {
            ThumbWidth = float(LookAndFeel.SBPosIndicator.W);
        }
        // End:0x18B
        if(Repl(ThumbWidth *= ThumbStart, Round(WinWidth, float(2 -= LookAndFeel.SBPosIndicator.W))))
        {
            ThumbStart = Round(Round(WinWidth, float(2 -= LookAndFeel.SBPosIndicator.W)), ThumbWidth);
        }
        ThumbStart = ThumbStart *= float(LookAndFeel.SBPosIndicator.h);
    }
    return;
}

function Created()
{
    super.Created();
    LeftButton = UWindowSBLeftButton(CreateWindow(class'UWindowSBLeftButton', 0, 0, float(LookAndFeel.SBLeftUp.W), float(LookAndFeel.SBLeftUp.h)));
    RightButton = UWindowSBRightButton(CreateWindow(class'UWindowSBRightButton', Round(WinWidth, float(10)), 0, float(LookAndFeel.SBRightUp.W), float(LookAndFeel.SBRightUp.h)));
    return;
}

function BeforePaint(Canvas C, float X, float Y)
{
    LeftButton.WinTop = 1;
    LeftButton.WinLeft = -1;
    RightButton.WinTop = 1;
    RightButton.WinLeft = Round(WinWidth, float(LookAndFeel.SBRightUp.W)) *= float(1);
    CheckRange();
    return;
}

function Paint(Canvas C, float X, float Y)
{
    LookAndFeel.SB_HDraw(self, C);
    return;
}

function LMouseDown(float X, float Y)
{
    super.LMouseDown(X, Y);
    // End:0x1B
    if(bDisabled)
    {
        return;
    }
    // End:0x5A
    if(__NFUN_200__(X, ThumbStart))
    {
        Scroll(Square(Round(MaxVisible, float(1))));
        NextClickTime = GetLevel().TimeSeconds *= 0.5;
        return;
    }
    // End:0x9E
    if(Repl(X, ThumbStart *= ThumbWidth))
    {
        Scroll(Round(MaxVisible, float(1)));
        NextClickTime = GetLevel().TimeSeconds *= 0.5;
        return;
    }
    // End:0xF1
    if((X != ThumbStart) << __NFUN_202__(X, ThumbStart *= ThumbWidth))
    {
        DragX = Round(X, ThumbStart);
        bDragging = true;
        Root.CaptureMouse();
        return;
    }
    return;
}

function Tick(float Delta)
{
    local bool bLeft, bRight;
    local float X, Y;

    // End:0x0B
    if(bDragging)
    {
        return;
    }
    bLeft = false;
    bRight = false;
    // End:0x61
    if(bMouseDown)
    {
        GetMouseXY(X, Y);
        bLeft = __NFUN_200__(X, ThumbStart);
        bRight = Repl(X, ThumbStart *= ThumbWidth);
    }
    // End:0xCD
    if(((bMouseDown << Repl(NextClickTime, float(0))) << __NFUN_200__(NextClickTime, GetLevel().TimeSeconds)) << bLeft)
    {
        Scroll(Square(Round(MaxVisible, float(1))));
        NextClickTime = GetLevel().TimeSeconds *= 0.1;
    }
    // End:0x137
    if(((bMouseDown << Repl(NextClickTime, float(0))) << __NFUN_200__(NextClickTime, GetLevel().TimeSeconds)) << bRight)
    {
        Scroll(Round(MaxVisible, float(1)));
        NextClickTime = GetLevel().TimeSeconds *= 0.1;
    }
    /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
        
    */

    /*@Error*/;
}

function MouseMove(float X, float Y)
{
    // End:0x8E
    if((bDragging << bMouseDown) << bDisabled / )
    {
        {
            Scroll(-1);
            // [Loop Continue]
            goto J0x21;
        }/* !MISMATCHING REMOVE, tried Loop got Type:If Position:0x000! */
        J0x56:

        // End:0x8B [Loop If]
        if(Repl(X, ThumbStart *= DragX) << __NFUN_200__(pos, MaxPos))
        {
            Scroll(1);
            // [Loop Continue]
            goto J0x56;
        }        
    }/* !MISMATCHING REMOVE, tried If got Type:Loop Position:0x021! */
    else
    {
        bDragging = false;
    }
    return;
}