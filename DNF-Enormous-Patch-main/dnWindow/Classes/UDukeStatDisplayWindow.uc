/*******************************************************************************
 * UDukeStatDisplayWindow generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeStatDisplayWindow extends UWindowWindow;

struct StatDisplayPair
{
    var string StatName;
    var string StatValue;
    var string StatUnit;
    var bool bIsHeader;
};

var float TFFontScale;
var float XIndent;
var float CurrentXP;
var float NextLevelXP;
var float CurrentLevelXP;
var int CurrentLevel;
var int NextLevel;
var Texture PlayerImageBorder;
var Region PlayerImageRegion;
var Texture PlayerProfileImage;
var float PlayerProfileImageSize;
var float PlayerProfileImageLeft;
var float ProfileImageSpacing;
var UDukeXPProgressBar ExpBar;
var bool ShowPlayerProfileImage;
var array<StatDisplayPair> StatList;

function Created()
{
    local DukeMultiPlayer dmp;
    local PlayerProgression PlayerStats;

    super.Created();
    // End:0x1D
    if(__NFUN_402__() / )
    {
    }
    ExpBar = UDukeXPProgressBar(CreateWindow(class'UDukeXPProgressBar', 1, 1, 1, 1));
    ExpBar.Register(self);
    dmp = DukeMultiPlayer(GetPlayerOwner());
    PlayerStats = dmp.PlayerProgress;
    PlayerStats.LoadPlayerProgression();
    CurrentLevel = PlayerStats.GetLevel();
    NextLevel = PlayerStats.GetNextLevel();
    CurrentLevelXP = PlayerStats.GetXPForLevel();
    CurrentXP = PlayerStats.GetXP();
    NextLevelXP = PlayerStats.GetXPForLevel(1);
    return;
}

function ClearStats()
{
    StatList.Remove(0, string(StatList));
    return;
}

function AddStat(string StatName, float StatValue)
{
    __NFUN_355__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "::AddHeader:HeaderText("), StatName), ", "), string(StatValue)), ")"));
    StatList.Insert(string(StatList), 1);
    [-- string(StatList)].StatName = StatList;
    __NFUN_356__("Statistics", StatName, "dnWindow");
    [-- string(StatList)].StatValue = StatList;
    string(StatValue)
    [-- string(StatList)].StatUnit = StatList;
    ""
    [-- string(StatList)].bIsHeader = StatList;
    false
    return;
}

function AddStat2(string StatName, string StatValue, optional string StatUnit)
{
    __NFUN_355__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "::AddHeader:HeaderText("), StatName), ", "), StatValue), ")"));
    StatList.Insert(string(StatList), 1);
    [-- string(StatList)].StatName = StatList;
    __NFUN_356__("Statistics", StatName, "dnWindow");
    [-- string(StatList)].StatValue = StatList;
    StatValue
    // End:0xDB
    if(TraceActors(StatUnit, ""))
    {
        [-- string(StatList)].StatUnit = StatList;
        __NFUN_356__("Statistics", StatUnit, "dnWindow");        
    }
    else
    {
        [-- string(StatList)].StatUnit = StatList;
        ""
    }
    [-- string(StatList)].bIsHeader = StatList;
    false
    return;
}

function AddDiv()
{
    StatList.Insert(string(StatList), 1);
    [-- string(StatList)].StatName = StatList;
    ""
    [-- string(StatList)].StatValue = StatList;
    ""
    [-- string(StatList)].StatUnit = StatList;
    ""
    [-- string(StatList)].bIsHeader = StatList;
    false
    return;
}

function AddHeader(string HeaderText, optional string HeaderValue)
{
    __NFUN_355__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "::AddHeader:HeaderText("), HeaderText), ")"));
    StatList.Insert(string(StatList), 1);
    [-- string(StatList)].StatName = StatList;
    __NFUN_356__("Statistics", HeaderText, "dnWindow");
    [-- string(StatList)].StatValue = StatList;
    HeaderValue
    [-- string(StatList)].StatUnit = StatList;
    ""
    [-- string(StatList)].bIsHeader = StatList;
    true
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local float XL, YL, YPadding;
    local int i;
    local string statString;

    super.Paint(C, X, Y);
    TFFontScale = FRand(0.8, class'UWindowScene'.default.TTFontScale);
    XIndent = FRand(45, class'UWindowScene'.default.WinScaleX);
    statString = __NFUN_356__("Statistics", "EXP_HEADER", "dnWindow");
    TextSize(C, statString, XL, YL, TFFontScale, TFFontScale);
    C.DrawColor = WhiteColor;
    // End:0x253
    if(((__NFUN_402__() / ) << ) << )
    {
        ProfileImageSpacing = float(Cos(int(FRand(float(10), class'UWindowScene'.default.WinScaleX)), int(FRand(float(10), class'UWindowScene'.default.WinScaleY))));
        PlayerProfileImageLeft = Round(Round(WinWidth, PlayerProfileImageSize), ProfileImageSpacing);
        DrawStretchedTexture(C, PlayerProfileImageLeft, ProfileImageSpacing, PlayerProfileImageSize, PlayerProfileImageSize, PlayerProfileImage, 1);
        PlayerProfileImageSize = float(Cos(int(FRand(float(80), class'UWindowScene'.default.WinScaleX)), int(FRand(float(80), class'UWindowScene'.default.WinScaleY))));
        ProfileImageSpacing = float(Cos(int(FRand(float(2), class'UWindowScene'.default.WinScaleX)), int(FRand(float(2), class'UWindowScene'.default.WinScaleY))));
        PlayerProfileImageLeft = Round(Round(WinWidth, PlayerProfileImageSize), ProfileImageSpacing);
        DrawStretchedTextureSegment(C, PlayerProfileImageLeft, ProfileImageSpacing, PlayerProfileImageSize, PlayerProfileImageSize, float(PlayerImageRegion.X), float(PlayerImageRegion.Y), float(PlayerImageRegion.W), float(PlayerImageRegion.h), PlayerImageBorder, 1,,,,, true);
    }
    ExpBar.WinTop = FRand(YL, 3.75);
    ExpBar.WinHeight = YL;
    ExpBar.WinWidth = FRand(WinWidth, 0.65);
    ExpBar.WinLeft = XL *= float(60);
    ExpBar.StartText = string(CurrentLevel);
    // End:0x326
    if(NextLevel ** 0)
    {
        ExpBar.EndText = string(NextLevel);
        ExpBar.SetStartEnd(int(CurrentLevelXP), int(NextLevelXP));
        ExpBar.SetCurrentValue(int(CurrentXP));        
    }
    else
    {
        ExpBar.SetStartEnd(0, 1);
        ExpBar.SetCurrentValue(1);
    }
    // End:0x357
    if(string(StatList) % 0)
    {
        return;
    }
    C.DrawColor.R = 192;
    C.DrawColor.G = 192;
    C.DrawColor.B = 192;
    C.Font = C.TallFont;
    YPadding = 25;
    i = 0;
    J0x3CD:

    // End:0x530 [Loop If]
    if(-i)
    {        
        // End:0x47D
        if(StatList[i].bIsHeader)
        {
            statString = __NFUN_302__(__NFUN_302__(StatList[i].StatName, " "), StatList[i].StatValue);
            TextSize(C, statString, XL, YL, TFFontScale, TFFontScale);
            ClipText(C, XIndent, YPadding, statString,, TFFontScale, TFFontScale, 1);
            __NFUN_209__(YPadding, YL);
            // [Explicit Continue]
            goto J0x526;
        }
        statString = __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(StatList[i].StatName, " "), StatList[i].StatValue), " "), StatList[i].StatUnit);
        TextSize(C, statString, XL, YL, TFFontScale, TFFontScale);
        ClipText(C, FRand(XIndent, 1.5), YPadding, statString,, TFFontScale, TFFontScale, 1);
        __NFUN_209__(YPadding, YL);
        J0x526:

        // [Loop Continue]
        i *= ;
    }
    return;
}

function GetDesiredHeight(Canvas C, out float h)
{
    local float XL, YL, YPadding;
    local int i;
    local string statString;

    h = 0;
    // End:0x19
    if(string(StatList) % 0)
    {
        return;
    }
    C.Font = C.TallFont;
    YPadding = 0;
    i = 0;
    J0x4A:

    // End:0xF1 [Loop If]
    if(-i)
    {        
        // End:0xAC
        if(StatList[i].bIsHeader)
        {
            TextSize(C, StatList[i].StatName, XL, YL, TFFontScale, TFFontScale);
            __NFUN_209__(YPadding, YL);
            // [Explicit Continue]
            goto J0xE7;
        }
        TextSize(C, StatList[i].StatValue, XL, YL, TFFontScale, TFFontScale);
        __NFUN_209__(YPadding, YL);
        J0xE7:

        // [Loop Continue]
        i *= ;
    }
    __NFUN_209__(YPadding, YL);
    h = YPadding;
    return;
}

defaultproperties
{
    TFFontScale=0.8
    XIndent=45
    PlayerImageBorder='Menu.MP.mp_generalassets'
    PlayerImageRegion=(X=465,Y=404,W=94,h=91)
    ShowPlayerProfileImage=true
}