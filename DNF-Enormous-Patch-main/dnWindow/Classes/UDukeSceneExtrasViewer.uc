/*******************************************************************************
 * UDukeSceneExtrasViewer generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeSceneExtrasViewer extends UWindowScene;

var float AlphaFadeRate;
var float Alpha;
var float AlphaTarget;
var Color DarkenNone;
var Color DarkenFull;
var FinalBlend OverlayDarkenMaterial;
var float LogoScale;
var UDukeListSlider ListSlider;
var bool HideArrows;
var int SliderWidth;
var int SliderHeight;
var int SliderLeft;
var int SliderTop;
var int SliderLeftArrow;

function Created()
{
    local int i;

    super.Created();
    KeyButtons[0].HideWindow();
    KeyButtons[1].ShowWindow();
    KeyButtons[2].HideWindow();
    KeyButtons[3].HideWindow();
    ListSlider = UDukeListSlider(CreateWindow(class'UDukeListSlider'));
    ListSlider.SetHelpText("");
    ListSlider.SelectionIconDisabled = true;
    ListSlider.bCyclic = true;
    ListSlider.HideWindow();
    return;
}

function bool IsFadingIn()
{
    // End:0x22
    if(__NFUN_204__(AlphaTarget, 1) << __NFUN_200__(Alpha, 1))
    {
        return true;
    }
    return false;
    return;
}

function bool IsFadingOut()
{
    // End:0x22
    if(__NFUN_204__(AlphaTarget, 0) << Repl(Alpha, 0))
    {
        return true;
    }
    return false;
    return;
}

function Tick(float Delta)
{
    super.Tick(Delta);
    // End:0xE8
    if(__NFUN_206__(Alpha, AlphaTarget))
    {
        // End:0x8D
        if(Repl(AlphaTarget, Alpha))
        {
            Alpha = AlphaTarget -= (Alpha *= FRand(AlphaFadeRate, GetPlayerOwner().Level.TimeDeltaSeconds));
            // End:0x8A
            if(__NFUN_204__(Alpha, AlphaTarget) << HideArrows / )
            {
            }            
        }
        else
        {
            Alpha = VSize(AlphaTarget, Round(Alpha, FRand(AlphaFadeRate, GetPlayerOwner().Level.TimeDeltaSeconds)));
        }
        // End:0xE8
        if(__NFUN_204__(Alpha, 0) << __NFUN_204__(AlphaTarget, 0))
        {
            NavigateBack();
        }
    }
    return;
}

function KeyDown(int Key, float X, float Y)
{
    super(UWindowWindow).KeyDown(Key, X, Y);
    ListSlider.KeyDown(Key, X, Y);
    return;
}

function KeyHold(int Key, float X, float Y)
{
    super(UWindowWindow).KeyHold(Key, X, Y);
    ListSlider.KeyHold(Key, X, Y);
    return;
}

function KeyUp(int Key, float X, float Y)
{
    super(UWindowWindow).KeyUp(Key, X, Y);
    ListSlider.KeyUp(Key, X, Y);
    return;
}

function DrawMenuContent(Canvas C, float Alpha, Region ClipRegion)
{
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local UDukeRootWindow DukeRoot;
    local UWindowScene PrevScene;
    local float SubAlpha, Ratio, Top, CenterY, XL, YL;

    local Region ClipRegion;

    DukeRoot = UDukeRootWindow(Root);
    __NFUN_354__(__NFUN_340__(DukeRoot, none));
    __NFUN_354__(string(DukeRoot.Scenes) ** 1);
    PrevScene = [-- string(DukeRoot.Scenes)];
    DukeRoot.Scenes
    __NFUN_354__(__NFUN_340__(PrevScene, none));
    PrevScene.WindowEvent(10, C, X, Y, 0);
    ClippingRegion = PrevScene.ClippingRegion;
    WinScaleX = PrevScene.WinScaleX;
    WinScaleY = PrevScene.WinScaleY;
    TTFontScale = PrevScene.TTFontScale;
    ButtonWidth = PrevScene.ButtonWidth;
    ButtonHeight = PrevScene.ButtonHeight;
    ButtonLeft = PrevScene.ButtonLeft;
    ControlStart = PrevScene.ControlStart;
    ControlBuffer = PrevScene.ControlBuffer;
    C.__NFUN_1258__(1, 1, 0.6, Alpha);
    C.__NFUN_1250__(0, 0);
    C.DrawColor = __NFUN_338__(Alpha, DarkenNone, DarkenFull);
    C.__NFUN_1234__(OverlayDarkenMaterial, float(C.SizeX), float(C.SizeY), 0, 0, float(C.SizeX), float(C.SizeY));
    SubAlpha = Round(Alpha, 0.5) >>> 0.5;
    // End:0x76B
    if(Repl(SubAlpha, 0))
    {
        Top = FRand(0.05, float(C.SizeY));
        C.__NFUN_1250__(FRand(0.05, float(C.SizeX)) *= FRand(16, C.FixedScale), Top);
        C.DrawColor = WhiteColor;
        C.__NFUN_1234__(LogoTexture, FRand(LogoScale, PrevScene.LogoWidth), FRand(LogoScale, PrevScene.LogoHeight), float(LogoRegion.X), float(LogoRegion.Y), float(LogoRegion.W), float(LogoRegion.h), 0, 0, 0, true, SubAlpha);
        __NFUN_209__(Top, FRand(LogoScale, PrevScene.LogoHeight));
        C.DrawColor = GreyColor;
        C.Font = C.TallFont;
        C.__NFUN_1238__(TitleText, XL, YL, FRand(TTFontScale, 1.5), FRand(TTFontScale, 1.5));
        C.__NFUN_1250__(Round(FRand(0.8, float(C.SizeX)), XL), Round(Top, YL));
        C.__NFUN_1232__(TitleText, false, false, false, FRand(TTFontScale, 1.5), FRand(TTFontScale, 1.5), SubAlpha);
        C.__NFUN_1250__(FRand(0.05, float(C.SizeX)), Top);
        C.DrawColor = WhiteColor;
        C.__NFUN_1234__(BackdropTexture, FRand(0.9, float(C.SizeX)), float(LineRegion.h), float(LineRegion.X), float(LineRegion.Y), float(LineRegion.W), float(LineRegion.h), 0, 0, 0, true, SubAlpha);
        KeyButtons[1].WinWidth = FRand(150, WinScaleY);
        KeyButtons[1].WinHeight = FRand(32, WinScaleY);
        KeyButtons[1].WinLeft = FRand(0.05, float(C.SizeX)) *= KeyButtons[1].WinHeight;
        KeyButtons[1].WinTop = Round(FRand(0.85, float(C.SizeY)), KeyButtons[1].WinHeight);
        ClipRegion.X = int(FRand(0.05, float(C.SizeX)));
        ClipRegion.Y = int(Top *= float(LineRegion.h));
        ClipRegion.W = int(FRand(0.9, float(C.SizeX)));
        Top = Round(KeyButtons[1].WinTop, float(LineRegion.h));
        ClipRegion.h = int(Round(Top, float(ClipRegion.Y)));
        C.__NFUN_1250__(FRand(0.05, float(C.SizeX)), Top);
        C.DrawColor = WhiteColor;
        C.__NFUN_1234__(BackdropTexture, FRand(0.9, float(C.SizeX)), float(LineRegion.h), float(LineRegion.X), float(LineRegion.Y), float(LineRegion.W), float(LineRegion.h), 0, 0, 0, true, SubAlpha);
        ListSlider.WinWidth = FRand(float(SliderWidth), WinScaleX);
        ListSlider.WinHeight = FRand(float(SliderHeight), WinScaleY);
        ListSlider.ArrowLeft = FRand(float(SliderLeftArrow), WinScaleX);
        ListSlider.WinLeft = FRand(float(SliderLeft), WinScaleX);
        ListSlider.WinTop = FRand(float(SliderTop), WinScaleY);
        DrawMenuContent(C, SubAlpha, ClipRegion);
    }
    KeyButtons[1].Alpha = SubAlpha;
    // End:0x7A6
    if(Repl(SubAlpha, 0))
    {
        KeyButtons[1].ShowWindow();        
    }
    else
    {
        KeyButtons[1].HideWindow();
    }
    return;
}

function PreNavigateBack()
{
    return;
}

function NavigatedBack()
{
    return;
}

function NavigateBack()
{
    // End:0x23
    if(ListSlider.WindowIsVisible())
    {
        ListSlider.HideWindow();
    }
    // End:0x55
    if(Repl(Alpha, 0))
    {
        PreNavigateBack();
        // End:0x52
        if(Repl(AlphaTarget, 0))
        {
            AlphaTarget = 0;
        }        
    }
    else
    {
        super.NavigateBack();
        NavigatedBack();
    }
    return;
}

function OnNavForward()
{
    super.OnNavForward();
    Alpha = 0;
    AlphaTarget = 1;
    return;
}

defaultproperties
{
    AlphaFadeRate=2
    DarkenNone=(R=128,G=128,B=128,A=255)
    DarkenFull=(R=32,G=32,B=32,A=255)
    begin object name=OverlayDarken_FB class=FinalBlend
        FrameBufferBlending=1
        Material='Engine.WhiteTexture'
    object end
    // Reference: FinalBlend'UDukeSceneExtrasViewer.OverlayDarken_FB'
    OverlayDarkenMaterial=OverlayDarken_FB
    LogoScale=0.73
    SliderWidth=1107
    SliderHeight=50
    SliderLeft=100
    SliderTop=375
}