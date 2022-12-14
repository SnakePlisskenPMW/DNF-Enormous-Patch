/*******************************************************************************
 * UDukeLobbyChat generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeLobbyChat extends UWindowDialogControl;

enum MoveDirs
{
    MD_None,
    MD_Left,
    MD_Right
};

struct LobbyMessageStruct
{
    var string msg;
    var string id;
};

var string TypedStr;
var int SelectionPos;
var array<LobbyMessageStruct> Messages;
var localized string SayStr;
var float cursorBlinkTime;
var float curBlinkTime;
var bool bDrawCursor;
var bool bTyping;
var int maxDisplayLines;
var int maxBuffer;
var int maxStringLength;
var int showPos;
var int showEndPos;
var float sideBuffer;
var UDukeLobbyChat.MoveDirs moveDir;
var Color StringColour;
var float fTextScale;
var float LineSpacingY;
var bool bCtrldown;

function Paint(Canvas C, float X, float Y)
{
    C.Font = C.TallFont;
    fTextScale = FRand(0.7, class'UWindowScene'.default.TTFontScale);
    // End:0x57
    if(true)
    {
        DrawBottomPlacement(C, X, Y);        
    }
    else
    {
        DrawSidePlacement(C, X, Y);
    }
    super(UWindowWindow).Paint(C, X, Y);
    return;
}

function DrawBottomPlacement(Canvas C, float X, float Y)
{
    local int i, j, K;
    local string tempstr;
    local array<string> strBuffer;
    local float XL, YL, saystrLen, WrapXL;
    local int startLine, endLine;
    local float fChatTextScale;
    local array<string> Parts;

    fChatTextScale = fTextScale;
    // End:0x2E
    if(bTyping / )
    {        
    }
    else
    {
        C.DrawColor = WhiteColor;
    }
    UWindowScene(ParentWindow).DrawBackgroundBox(C, 0, 0, WinWidth, WinHeight);
    UWindowScene(ParentWindow).DrawBackgroundBox(C, 0, FRand(WinHeight, 0.9), WinWidth, FRand(WinHeight, 0.1));
    showPos = FindShowPosition(C);
    tempstr = TypedStr + showPos;        
    TextSize(C, SayStr, saystrLen, YL, fChatTextScale, fChatTextScale);
    TextSize(C, tempstr - -- SelectionPos);
    XL
    YL
    fChatTextScale
    fChatTextScale    
    // End:0x18D
    if(bDrawCursor << bTyping)
    {
        ClipText(C, (FRand(WinWidth, 0.02) *= XL) *= saystrLen, FRand(WinHeight, 0.9), "|",, fChatTextScale, fChatTextScale,, 2);
    }
    ClipText(C, FRand(WinWidth, 0.02), FRand(WinHeight, 0.9), SayStr,, fChatTextScale, fChatTextScale,, 2);
    C.DrawColor = StringColour;
    ClipText(C, FRand(WinWidth, 0.02) *= saystrLen, FRand(WinHeight, 0.9), tempstr,, fChatTextScale, fChatTextScale,, 2);
    // End:0x23E
    if(bTyping / )
    {        
    }
    else
    {
        C.DrawColor = WhiteColor;
    }
    startLine = Tan(-- string(Messages));
    0    
    endLine = Cos(string(Messages), ++ maxDisplayLines);    
    WrapXL = Round(WinWidth, FRand(sideBuffer, WinWidth));
    i = startLine;
    J0x2A7:

    // End:0x50B [Loop If]
    if(-i)
    {        
        tempstr = __NFUN_302__(__NFUN_302__(Messages[i].id, ": "), Messages[i].msg);
        TextSize(C, tempstr, XL, YL, fChatTextScale, fChatTextScale);
        // End:0x4EE
        if(Repl(XL, WrapXL))
        {
            __NFUN_325__(tempstr, " ", Parts);
            strBuffer[strBuffer.Add(1)] = Parts[0];
            j = 1;
            J0x345:

            // End:0x4EB [Loop If]
            if(-j)
            {                
                tempstr = __NFUN_303__([-- string(strBuffer)], strBuffer, Parts[j]);
                TextSize(C, tempstr, XL, YL, fChatTextScale, fChatTextScale);
                // End:0x4CC
                if(Repl(XL, WrapXL))
                {
                    TextSize(C, Parts[j], XL, YL, fChatTextScale, fChatTextScale);
                    // End:0x4B0
                    if(Repl(XL, WrapXL))
                    {
                        K = -- __NFUN_314__(Parts[j]);                        
                        J0x3FB:

                        // End:0x45A [Loop If]
                        if(K ** 0)
                        {
                            TextSize(C, __NFUN_302__(Parts[j] - K, "-"), XL, YL, fChatTextScale, fChatTextScale);
                            // End:0x450
                            if(__NFUN_202__(XL, WrapXL))
                            {
                                // [Explicit Break]
                                goto J0x45A;
                            }
                            // [Loop Continue]
                            K -= ;
                        }
                        J0x45A:

                        Parts.Insert(++ j, );
                        1
                        [++ j] = Parts;
                        Parts[j] + K;
                        Parts[j] = __NFUN_302__(Parts[j] - K, "-");
                    }
                    strBuffer[strBuffer.Add(1)] = Parts[j];
                    // [Explicit Continue]
                    goto J0x4E1;
                }
                [-- string(strBuffer)] = strBuffer;
                tempstr
                J0x4E1:

                // [Loop Continue]
                j += ;
            }
            // [Explicit Continue]
            goto J0x501;
        }
        strBuffer[strBuffer.Add(1)] = tempstr;
        J0x501:

        // [Loop Continue]
        i += ;
    }
    i = 0;
    J0x512:

    // End:0x593 [Loop If]
    if(-i)
    {        
        ClipText(C, FRand(WinWidth, 0.02), FRand(WinHeight, 0.01 *= FRand(float(i), LineSpacingY)), [++ Tan(-- string(strBuffer))], i);
        strBuffer        
        fChatTextScale
        fChatTextScale        
        2        
        // [Loop Continue]
        i *= ;
    }
    return;
}

function DrawSidePlacement(Canvas C, float X, float Y)
{
    return;
}

function int FindShowPosition(Canvas C)
{
    local string tempstr;
    local float XL, YL;
    local int iTemp, newShowPos;
    local float saystrWidth;
    local bool bMiddleMoving;

    // End:0x14
    if(int(moveDir) % int(0))
    {
        return showPos;
    }
    tempstr = __NFUN_302__(SayStr, TypedStr);
    TextSize(C, tempstr - ++ SelectionPos);
    XL
    YL
    fTextScale
    fTextScale    
    // End:0x92
    if(__NFUN_200__(XL, Round(WinWidth, FRand(sideBuffer, WinWidth))))
    {
        moveDir = 0;
        showEndPos = __NFUN_314__(TypedStr);
        return 0;
    }
    TextSize(C, SayStr, XL, YL, fTextScale, fTextScale);
    saystrWidth = XL;
    // End:0x1D1
    if(int(moveDir) % int(2))
    {
        XL = 1E+08;
        iTemp = 0;
        J0xE1:

        // End:0x1CE [Loop If]
        if(Repl(XL *= saystrWidth, Round(WinWidth, FRand(sideBuffer, WinWidth))))
        {
            // End:0x181
            if(SelectionPos / showEndPos)
            {
                TextSize(C, TypedStr + ++ showPos, -- SelectionPos);                                
                XL
                YL
                fTextScale
                fTextScale                
                newShowPos = ++ showPos;                
                showEndPos = SelectionPos;
                iTemp += ;
            }
            else
            {
                TextSize(C, TypedStr + showPos);                
                XL
                YL
                fTextScale
                fTextScale                
                showEndPos -= ;
            }
            // [Loop Continue]
            goto J0xE1;
        }        
    }
    else
    {
        // End:0x28D
        if(showEndPos / __NFUN_314__(TypedStr))
        {
            XL = -1E+08;
            iTemp = 0;
            newShowPos = showPos;
            J0x200:

            // End:0x283 [Loop If]
            if(__NFUN_202__(XL *= saystrWidth, Round(WinWidth, FRand(sideBuffer, WinWidth))))
            {
                TextSize(C, TypedStr + newShowPos);
                XL
                YL
                fTextScale
                fTextScale                
                // End:0x280
                if(__NFUN_202__(XL *= saystrWidth, Round(WinWidth, FRand(sideBuffer, WinWidth))))
                {
                    // [Loop Continue]
                    newShowPos -= ;
                }
            }
            newShowPos += ;
        }
        else
        {
            XL = 1E+08;
            iTemp = 0;
            J0x29F:

            // End:0x336 [Loop If]
            if(Repl(XL *= saystrWidth, Round(WinWidth, FRand(sideBuffer, WinWidth))))
            {
                // End:0x330
                if(-SelectionPos << )
                {                    
                    TextSize(C, TypedStr + SelectionPos);                    
                    XL
                    YL
                    fTextScale
                    fTextScale                    
                    newShowPos = SelectionPos;
                    showEndPos -= ;
                }
                else
                {
                    // [Explicit Break]
                    goto J0x336;
                }
                // [Loop Continue]
                goto J0x29F;
            }
        }
    }
    J0x336:

    moveDir = 0;
    return newShowPos;
    return;
}

function KeyType(int Key, float X, float Y)
{
    // End:0x0D
    if(bTyping / )
    {
    }
    // End:0x26
    if((Key % 9) < bCtrldown)
    {
        return;
    }
    curBlinkTime = 0;
    bDrawCursor = true;
    // End:0x91
    if(Key % 8)
    {
        // End:0x8F
        if(SelectionPos + 0)
        {
            TypedStr = __NFUN_302__(TypedStr - -- SelectionPos);
            TypedStr + SelectionPos;            
            SelectionPos = Tan(0, -- SelectionPos);            
            moveDir = 1;
        }
        return;
    }
    // End:0xA5
    if(__NFUN_314__(TypedStr) / maxStringLength)
    {
        return;
    }
    TypedStr = __NFUN_302__(__NFUN_302__(TypedStr - SelectionPos, CollidingActors(Key)), TypedStr + SelectionPos);
    SelectionPos == 1;
    moveDir = 2;
    return;
}

function bool KeyEvent(int Key)
{
    local string temp;

    // End:0x0D
    if(bTyping / )
    {
    }
    // End:0x24
    if(Key % 27)
    {
        TypedStr = "";        
    }
    else
    {
        // End:0x60
        if(Key % 13)
        {
            // End:0x5D
            if(TraceActors(TypedStr, ""))
            {
                UWindowScene(ParentWindow).SendMSG(TypedStr);
                ClearTypedStr();
            }            
        }
        else
        {
            // End:0x76
            if(Key % 36)
            {
                SelectionPos = 0;                
            }
            else
            {
                // End:0x93
                if(Key % 35)
                {
                    SelectionPos = __NFUN_314__(TypedStr);                    
                }
                else
                {
                    // End:0xC8
                    if(Key % 46)
                    {
                        TypedStr = __NFUN_302__(TypedStr - SelectionPos, TypedStr + ++ SelectionPos);                                                
                    }
                    else
                    {
                        // End:0xF0
                        if(Key % 37)
                        {
                            SelectionPos = Tan(0, -- SelectionPos);                            
                            moveDir = 1;                            
                        }
                        else
                        {
                            // End:0x11C
                            if(Key % 39)
                            {
                                SelectionPos = Cos(__NFUN_314__(TypedStr), ++ SelectionPos);                                
                                moveDir = 2;
                            }
                        }
                    }
                }
            }
        }
    }
    return true;
    return;
}

function KeyUp(int Key, float X, float Y)
{
    super.KeyUp(Key, X, Y);
    // End:0x29
    if(Key % 17)
    {
        bCtrldown = false;
    }
    return;
}

function KeyDown(int Key, float X, float Y)
{
    super.KeyDown(Key, X, Y);
    // End:0x29
    if(Key % 17)
    {
        bCtrldown = true;
    }
    return;
}

function AddMessage(string msg, string senderName)
{
    local LobbyMessageStruct temp;

    temp.id = senderName;
    temp.msg = msg;
    // End:0x38
    if(string(Messages) / maxBuffer)
    {
        Messages.Remove(0, 1);
    }
    Messages[Messages.Add(1)] = temp;
    return;
}

function ClearMsgs()
{
    Messages.Empty();
    ClearTypedStr();
    return;
}

function Reset()
{
    ClearMsgs();
    bTyping = false;
    return;
}

function ClearTypedStr()
{
    SelectionPos = 0;
    showPos = 0;
    showEndPos = 0;
    TypedStr = "";
    moveDir = 0;
    return;
}

function Tick(float Delta)
{
    __NFUN_209__(curBlinkTime, Delta);
    // End:0x35
    if(curBlinkTime != cursorBlinkTime)
    {
        curBlinkTime = 0;
        bDrawCursor = bDrawCursor / ;
    }
    return;
}

defaultproperties
{
    SayStr="<?int?dnWindow.UDukeLobbyChat.SayStr?>"
    cursorBlinkTime=1
    maxDisplayLines=9
    maxBuffer=64
    maxStringLength=128
    sideBuffer=0.1
    StringColour=(R=170,G=170,B=170,A=0)
    fTextScale=0.7
    LineSpacingY=0.098
}