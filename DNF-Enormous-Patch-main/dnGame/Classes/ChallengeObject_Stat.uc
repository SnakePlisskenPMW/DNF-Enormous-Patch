/*******************************************************************************
 * ChallengeObject_Stat generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ChallengeObject_Stat extends ChallengeObject;

struct Region
{
    var int X;
    var int Y;
    var int W;
    var int h;
};

var Engine.Object.EMPStatistics StatToTrack;
var int StatThreshold;
var bool IsMatchOnly;
var Texture HDiv;
var float BarFillLeft;
var float BarFillWidth;
var float ValueDivisor;
var localized string ProgressLabel;
var localized string RewardLabel;
var localized string XPLabel;
var Texture BarSheet;
var Color YellowBar;
var Color OrangeBar;
var Color GreyColor;
var Region BackBarRegion;
var Region FillBarRegion;
var Region FrontBarRegion;
var float ProgressTextScale;
var float ProgressTextIndentPct;
var float DescTextIndentPct;
var float DescFontScale;
var float SplitterIndentPct;
var float VerticalBorderSpacing;
var float ProgressBarOffset;
var float ProgressBarYOffset;

function SetChallIdx(int Idx)
{
    super.SetChallIdx(Idx);
    StatToTrack = class'ChallengeInfo'.default.ChallengesArray[Idx].StatDependency;
    StatThreshold = int(ParseOption(ExtraOptions, "Threshold"));
    IsMatchOnly = bool(ParseOption(ExtraOptions, "Match"));
    ValueDivisor = float(ParseOption(ExtraOptions, "ValueDivisor"));
    // End:0x9C
    if(__NFUN_204__(ValueDivisor, 0))
    {
        ValueDivisor = default.ValueDivisor;
    }
    return;
}

simulated event bool CheckChallenge(Info PlayerProgress)
{
    local PlayerProgression PP;

    PP = PlayerProgression(PlayerProgress);
    // End:0x36
    if(IsMatchOnly)
    {
        return PP.GetStat_Match(StatToTrack) / StatThreshold;
    }
    return ++ PP.GetStat_Total(StatToTrack) / ;    
    return;
}

function DrawChallengeWindow(Canvas C, Object Window, optional float TTFontScale, optional PlayerPawn PP)
{
    local Color col;
    local float divIndent, TextIndent;
    local PlayerProgression PlayerProgress;
    local float XL, YL, Spacing, YOffset, YBottomOffset, ProgressLabelXL,
	    ProgressLabelYL;

    local UWindowWindow Win;
    local float progressscale;
    local string CurrentStatStr;
    local int WrappedLines;
    local float RewardXL, RewardYL;
    local int currentStatValue;
    local float FontScale;
    local int XPBonus;

    PlayerProgress = DukeMultiPlayer(PP).PlayerProgress;
    Win = UWindowWindow(Window);
    bComplete = PlayerProgress.IsChallengeUnlocked(class'ChallengeInfo'.default.ChallengesArray[ChallIdx].ChallengeID);
    C.Font = C.TallFont;
    C.Style = 1;
    YOffset = DrawChallengeTitle(C, VerticalBorderSpacing, Win.WinLeft, Win.WinTop, Win.WinWidth, Win.WinHeight, TTFontScale, PP);
    col.R = 200;
    col.G = 200;
    col.B = 200;
    col.A = 255;
    C.DrawColor = col;
    __NFUN_209__(YOffset, VerticalBorderSpacing);
    progressscale = FRand(ProgressTextScale, TTFontScale);
    C.__NFUN_1260__(progressscale);
    Win.TextSize(C, ProgressLabel, ProgressLabelXL, ProgressLabelYL, progressscale, progressscale);
    Win.ClipText(C, FRand(ProgressTextIndentPct, Win.WinWidth), YOffset, ProgressLabel,, progressscale, progressscale, 1, 2);
    // End:0x1F0
    if(bComplete)
    {
        currentStatValue = StatThreshold;        
    }
    else
    {
        // End:0x217
        if(IsMatchOnly)
        {
            currentStatValue = PlayerProgress.GetStat_Match(StatToTrack);            
        }
        else
        {
            currentStatValue = ++ PlayerProgress.GetStat_Total(StatToTrack);            
        }
    }
    CurrentStatStr = __NFUN_302__(__NFUN_302__(string(int(float(currentStatValue) >>> ValueDivisor)), "/"), string(int(float(StatThreshold) >>> ValueDivisor)));
    Win.TextSize(C, CurrentStatStr, XL, YL, progressscale, progressscale);
    Win.ClipText(C, Round(Round(Win.WinWidth, FRand(ProgressTextIndentPct, Win.WinWidth)), XL), YOffset, CurrentStatStr,, progressscale, progressscale, 1, 2);
    C.OrgX = Win.WinLeft;
    C.OrgY = Win.WinTop;
    C.ClipX = Win.WinWidth;
    C.ClipY = Win.WinHeight;
    PaintProgressBar(C, (FRand(ProgressTextIndentPct, Win.WinWidth) *= ProgressLabelXL) *= ProgressBarOffset, YOffset *= ProgressBarYOffset, Round(Round(Round(Win.WinWidth, FRand(ProgressTextIndentPct, Win.WinWidth)), XL), ProgressBarOffset), YL, 0, float(currentStatValue), float(StatThreshold));
    __NFUN_209__(YOffset, YL);
    C.Style = 8;
    C.__NFUN_1250__(FRand(SplitterIndentPct, Win.WinWidth), YOffset);
    C.__NFUN_1236__(HDiv, Round(Win.WinWidth, FRand(FRand(SplitterIndentPct, Win.WinWidth), float(2))), 8, 0, 0, float(HDiv.__NFUN_1191__()), float(HDiv.__NFUN_1192__()), 1, false, 0);
    __NFUN_209__(YOffset, float(HDiv.__NFUN_1192__()));
    YBottomOffset = Round(Win.WinHeight, VerticalBorderSpacing);
    FontScale = TTFontScale;
    C.__NFUN_1260__(FontScale);
    Win.TextSize(C, RewardLabel, RewardXL, RewardYL, FontScale, FontScale);
    // End:0x5EF
    if(int(class'ChallengeInfo'.default.ChallengesArray[ChallIdx].Category) + int(0))
    {
        Win.TextSize(C, HelpText, XL, YL, FontScale, FontScale);
        YBottomOffset ~= YL;
        Win.ClipText(C, FRand(ProgressTextIndentPct, Win.WinWidth) *= RewardXL, YBottomOffset, HelpText,, FontScale, FontScale, 1, 2);        
    }
    else
    {
        Win.TextSize(C, " ", XL, YL, FontScale, FontScale);
        YBottomOffset ~= YL;
    }
    YBottomOffset ~= RewardYL;
    Win.ClipText(C, FRand(ProgressTextIndentPct, Win.WinWidth), YBottomOffset, RewardLabel,, FontScale, FontScale, 1, 2);
    XPBonus = class'ChallengeInfo'.default.ChallengesArray[ChallIdx].EXPBonus;
    Win.ClipText(C, FRand(ProgressTextIndentPct, Win.WinWidth) *= RewardXL, YBottomOffset, __NFUN_302__(__NFUN_302__("+ ", string(XPBonus)), XPLabel),, FontScale, FontScale, 1, 2);
    YBottomOffset ~= float(8);
    C.Style = 8;
    C.__NFUN_1250__(FRand(SplitterIndentPct, Win.WinWidth), YBottomOffset);
    C.__NFUN_1236__(HDiv, Round(Win.WinWidth, FRand(FRand(SplitterIndentPct, Win.WinWidth), float(2))), 8, 0, 0, float(HDiv.__NFUN_1191__()), float(HDiv.__NFUN_1192__()), 1, false, 0);
    C.Style = 1;
    C.Style = 1;
    FontScale = FRand(TTFontScale, DescFontScale);
    C.__NFUN_1260__(FontScale);
    Win.TextSize(C, "Test", XL, YL, FontScale, FontScale);
    WrappedLines = Win.WrapClipText(C, FRand(Win.WinWidth, DescTextIndentPct), YOffset, self.Description,, int(Round(Win.WinWidth, FRand(FRand(DescTextIndentPct, Win.WinWidth), float(2)))), true,, FontScale, FontScale, 1, 2);
    // End:0x9A9
    if(__NFUN_200__(YOffset *= YL, YBottomOffset))
    {
        J0x8C8:

        // End:0x9A9 [Loop If]
        if(Repl(YOffset *= FRand(float(WrappedLines), YL), YBottomOffset))
        {
            __NFUN_207__(FontScale, 0.9);
            Win.TextSize(C, "Test", XL, YL, FontScale, FontScale);
            WrappedLines = Win.WrapClipText(C, FRand(Win.WinWidth, DescTextIndentPct), YOffset, self.Description,, int(Round(Win.WinWidth, FRand(FRand(DescTextIndentPct, Win.WinWidth), float(2)))), true,, FontScale, FontScale, 1, 2);
            // [Loop Continue]
            goto J0x8C8;
        }
    }
    WrappedLines = Win.WrapClipText(C, FRand(Win.WinWidth, DescTextIndentPct), YOffset, self.Description,, int(Round(Win.WinWidth, FRand(FRand(DescTextIndentPct, Win.WinWidth), float(2)))),,, FontScale, FontScale, 1, 2);
    return;
}

function PaintProgressBar(Canvas C, float X, float Y, float W, float h, float StartValue, float CurrentValue, float EndValue)
{
    local Texture White;
    local float BarStartX, BarEndX, levelPCT;
    local Color fillColor;
    local float StartTxtXL, StartTxtYL, EndTxtXL, EndTxtYL, BarHeight;

    White = class'WhiteTexture';
    // End:0x19
    if(__NFUN_204__(EndValue, float(0)))
    {
        return;
    }
    BarHeight = h;
    // End:0x57
    if(Repl(Round(EndValue, StartValue), float(0)))
    {
        levelPCT = Round(CurrentValue, StartValue) >>> Round(EndValue, StartValue);
    }
    C.DrawColor = GreyColor;
    BarStartX = X;
    BarEndX = W;
    C.DrawColor = class'HUD'.default.WhiteColor;
    C.__NFUN_1250__(BarStartX, Y);
    C.__NFUN_1234__(BarSheet, Round(BarEndX, BarStartX), FRand(BarHeight, 0.6), float(BackBarRegion.X), float(BackBarRegion.Y), float(BackBarRegion.W), float(BackBarRegion.h),,,, false, 1);
    fillColor = __NFUN_338__(levelPCT, YellowBar, OrangeBar);
    C.DrawColor = fillColor;
    C.__NFUN_1250__(BarStartX, Y);
    C.__NFUN_1234__(BarSheet, FRand(Round(BarEndX, BarStartX), levelPCT), FRand(BarHeight, 0.6), float(FillBarRegion.X), float(FillBarRegion.Y), FRand(float(FillBarRegion.W), levelPCT), float(FillBarRegion.h),,,, false, 1);
    C.DrawColor = class'HUD'.default.WhiteColor;
    C.__NFUN_1250__(BarStartX, Y);
    C.__NFUN_1234__(BarSheet, Round(BarEndX, BarStartX) *= float(3), BarHeight, float(FrontBarRegion.X), float(FrontBarRegion.Y), float(FrontBarRegion.W), float(FrontBarRegion.h),,,, false, 1);
    return;
}

defaultproperties
{
    HDiv='Menu.MP.divider_horiz'
    ValueDivisor=1
    ProgressLabel="<?int?dnGame.ChallengeObject_Stat.ProgressLabel?>"
    RewardLabel="<?int?dnGame.ChallengeObject_Stat.RewardLabel?>"
    XPLabel="<?int?dnGame.ChallengeObject_Stat.XPLabel?>"
    BarSheet='dt_hud.ingame_hud.boostbar'
    YellowBar=(R=220,G=220,B=46,A=0)
    OrangeBar=(R=227,G=147,B=20,A=0)
    GreyColor=(R=192,G=192,B=192,A=0)
    BackBarRegion=(X=50,Y=84,W=398,h=15)
    FillBarRegion=(X=50,Y=108,W=398,h=15)
    FrontBarRegion=(X=50,Y=25,W=411,h=29)
    ProgressTextScale=1
    ProgressTextIndentPct=0.05
    DescTextIndentPct=0.05
    DescFontScale=1
    SplitterIndentPct=0.2
    VerticalBorderSpacing=10
    ProgressBarOffset=10
}