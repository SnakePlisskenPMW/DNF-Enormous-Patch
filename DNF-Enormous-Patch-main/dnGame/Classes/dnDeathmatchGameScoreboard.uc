/*******************************************************************************
 * dnDeathmatchGameScoreboard generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnDeathmatchGameScoreboard extends ScoreBoard
    collapsecategories
    hidecategories(movement,Collision,Lighting,LightColor);

enum EFontSize
{
    FS_Large,
    FS_Medium,
    FS_Small,
    FS_VerySmall
};

var PlayerReplicationInfo Ordered[32];
var localized string MapTitle;
var localized string Author;
var localized string Restart;
var localized string Continue;
var localized string Ended;
var localized string ElapsedTime;
var localized string RemainingTime;
var localized string FragGoal;
var localized string TimeLimit;
var localized string PlayerString;
var localized string FragsString;
var localized string DeathsString;
var localized string PingString;
var localized string TimeString;
var localized string LossString;
var localized string FPHString;
var float ScoreStart;
var bool bTimeDown;
var float LargeFontScaleX;
var float LargeFontScaleY;
var float MediumFontScaleX;
var float MediumFontScaleY;
var float SmallFontScaleX;
var float SmallFontScaleY;
var float FontScaleX;
var float FontScaleY;
var string LastKilledByMessage;
var Texture LastKilledByIcon;
var string ScoreboardWindowType;
var dnDeathmatchGameScoreboard.EFontSize FontSize;
var Color WhiteColor;
var Color RedColor;
var Color LightGreenColor;
var Color DarkGreenColor;
var Color GreenColor;
var Color CyanColor;
var Color BlueColor;
var Color GoldColor;
var Color PurpleColor;
var Color TurqColor;
var Color GrayColor;
var Color LightBlueColor;
var Color DarkBlueColor;
var Color BlackColor;
var Color OrangeColor;

function SetFontSize(Canvas C, dnDeathmatchGameScoreboard.EFontSize newSize)
{
    C.Font = C.BlockFont;
    switch(newSize)
    {
        // End:0x45
        case 0:
            FontScaleX = 1.5;
            FontScaleY = 1.5;
            // End:0xC4
            break;
        // End:0x63
        case 1:
            FontScaleX = 1;
            FontScaleY = 1;
            // End:0xC4
            break;
        // End:0xA0
        case 2:
            C.Font = C.SmallFont;
            FontScaleX = 1;
            FontScaleY = 1;
            // End:0xC4
            break;
        // End:0xBE
        case 3:
            FontScaleX = 0.5;
            FontScaleY = 0.5;
            // End:0xC4
            break;
        // End:0xFFFF
        default:
            // End:0xC4
            break;
            break;
    }
    return;
}

function DrawHeader(Canvas C)
{
    local GameReplicationInfo GRI;
    local float XL, YL;

    C.DrawColor = WhiteColor;
    GRI = PlayerPawn(Owner).GameReplicationInfo;
    ScoreStart = FRand(58 >>> 720, C.ClipY);
    C.bCenter = true;
    SetFontSize(C, 1);
    C.__NFUN_1238__("Test", XL, YL, FontScaleX, FontScaleY);
    // End:0x107
    if(TraceActors(GRI.GameEndedComments, ""))
    {
        C.DrawColor = GoldColor;
        C.__NFUN_1250__(0, ScoreStart);
        C.__NFUN_1232__(GRI.GameEndedComments, true,,, FontScaleX, FontScaleY);        
    }
    else
    {
        C.__NFUN_1250__(0, ScoreStart);
        DrawVictoryConditions(C);
    }
    C.bCenter = false;
    return;
}

function DrawVictoryConditions(Canvas C)
{
    local dnDeathmatchGameReplicationInfo GRI;
    local float XL, YL;

    GRI = dnDeathmatchGameReplicationInfo(PlayerPawn(Owner).GameReplicationInfo);
    // End:0x2D
    if(__NFUN_339__(GRI, none))
    {
        return;
    }
    SetFontSize(C, 1);
    C.DrawColor = WhiteColor;
    C.__NFUN_1232__(GRI.GameName,,,, FontScaleX, FontScaleY);
    C.__NFUN_1238__("Test", XL, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(0, Round(C.CurY, YL) *= float(8));
    // End:0x14A
    if(TraceActors(LastKilledByMessage, ""))
    {
        C.DrawColor = RedColor;
        C.__NFUN_1232__(LastKilledByMessage,,,, FontScaleX, FontScaleY);
        C.__NFUN_1250__(0, Round(C.CurY, YL));
        C.DrawColor = WhiteColor;
    }
    // End:0x1E0
    if(GRI.FragLimit ** 0)
    {
        C.__NFUN_1232__(__NFUN_303__(FragGoal, string(GRI.FragLimit)),,,, FontScaleX, FontScaleY);
        C.__NFUN_1238__("Test", XL, YL, FontScaleX, FontScaleY);
        C.__NFUN_1250__(0, Round(C.CurY, YL));
    }
    // End:0x22F
    if(GRI.TimeLimit ** 0)
    {
        C.__NFUN_1232__(__NFUN_302__(__NFUN_303__(TimeLimit, string(GRI.TimeLimit)), ":00"),,,, FontScaleX, FontScaleY);
    }
    return;
}

function string TwoDigitString(int Num)
{
    // End:0x1C
    if(-Num)
    {        
        return __NFUN_302__("0", string(Num));        
    }
    else
    {
        return string(Num);
    }
    return;
}

simulated function string GetTime(int ElapsedTime)
{
    local string String;
    local int seconds, Minutes, Hours;

    seconds = ElapsedTime;
    Minutes = ++ seconds;    
    Hours = ++ Minutes;    
    seconds = -- seconds;    
    Minutes = -- Minutes;    
    String = __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(TwoDigitString(Hours), ":"), TwoDigitString(Minutes)), ":"), TwoDigitString(seconds));
    return String;
    return;
}

function DrawTrailer(Canvas C)
{
    local int Hours, Minutes, seconds;
    local float XL, YL;
    local PlayerPawn PlayerOwner;
    local float RemainingTimeSeconds;

    C.bCenter = true;
    C.__NFUN_1231__("Test", XL, YL);
    C.DrawColor = WhiteColor;
    PlayerOwner = PlayerPawn(Owner);
    C.__NFUN_1250__(0, Round(C.ClipY, FRand(float(2), YL)));
    C.__NFUN_1232__(__NFUN_303__(__NFUN_303__(PlayerOwner.GameReplicationInfo.GameName, MapTitle), Level.Title), true);
    C.__NFUN_1250__(0, Round(C.ClipY, YL));
    RemainingTimeSeconds = Round(PlayerOwner.GameReplicationInfo.MatchEndTime, PlayerOwner.Level.TimeSeconds);
    // End:0x1F9
    if(bTimeDown < dnDeathmatchGameReplicationInfo(PlayerOwner.GameReplicationInfo).TimeLimit ** 0)
    {
        bTimeDown = true;
        // End:0x193
        if(__NFUN_202__(RemainingTimeSeconds, float(0)))
        {
            C.__NFUN_1232__(__NFUN_303__(RemainingTime, "00:00"), true,,, FontScaleX, FontScaleY);            
        }
        else
        {
            Minutes = int(RemainingTimeSeconds >>> float(60));
            seconds = int(IsA(RemainingTimeSeconds, float(60)));
            C.__NFUN_1232__(__NFUN_302__(__NFUN_302__(__NFUN_303__(RemainingTime, TwoDigitString(Minutes)), ":"), TwoDigitString(seconds)), true,,, FontScaleX, FontScaleY);
        }        
    }
    else
    {
        seconds = int(PlayerOwner.GameReplicationInfo.ElapsedTime);
        Minutes = ++ seconds;        
        Hours = ++ Minutes;        
        seconds = -- seconds;        
        Minutes = -- Minutes;        
        C.__NFUN_1232__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_303__(ElapsedTime, TwoDigitString(Hours)), ":"), TwoDigitString(Minutes)), ":"), TwoDigitString(seconds)), true,,, FontScaleX, FontScaleY);
    }
    // End:0x3C9
    if(TraceActors(PlayerOwner.GameReplicationInfo.GameEndedComments, ""))
    {
        C.bCenter = true;
        C.__NFUN_1231__("Test", XL, YL);
        C.__NFUN_1250__(0, Round(C.ClipY, float(Cos(int(FRand(YL, float(6))), int(FRand(C.ClipY, 0.1))))));
        C.DrawColor = GreenColor;
        // End:0x3A7
        if(int(Level.NetMode) % int(NM_Standalone))
        {
            C.__NFUN_1232__(__NFUN_303__(Ended, Continue), true,,, FontScaleX, FontScaleY);            
        }
        else
        {
            C.__NFUN_1232__(Ended, true,,, FontScaleX, FontScaleY);
        }        
    }
    else
    {
        // End:0x498
        if(__NFUN_340__(PlayerOwner, none) << __NFUN_202__(PlayerOwner.Health, float(0)))
        {
            C.bCenter = true;
            C.__NFUN_1231__("Test", XL, YL);
            C.__NFUN_1250__(0, Round(C.ClipY, float(Cos(int(FRand(YL, float(6))), int(FRand(C.ClipY, 0.1))))));
            C.DrawColor = GreenColor;
            C.__NFUN_1232__(Restart, true,,, FontScaleX, FontScaleY);
        }
    }
    C.bCenter = false;
    return;
}

function DrawCategoryHeaders(Canvas C)
{
    local float Offset, XL, YL;

    SetFontSize(C, 1);
    Offset = C.CurY;
    C.DrawColor = WhiteColor;
    C.__NFUN_1238__(PlayerString, XL, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(Round(FRand(C.ClipX >>> float(8), float(2)), XL >>> float(2)), Offset);
    C.__NFUN_1232__(PlayerString,,,, FontScaleX, FontScaleY);
    C.__NFUN_1238__(FragsString, XL, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(Round(FRand(C.ClipX >>> float(8), float(5)), XL >>> float(2)), Offset);
    C.__NFUN_1232__(FragsString,,,, FontScaleX, FontScaleY);
    C.__NFUN_1238__(DeathsString, XL, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(Round(FRand(C.ClipX >>> float(8), float(6)), XL >>> float(2)), Offset);
    C.__NFUN_1232__(DeathsString,,,, FontScaleX, FontScaleY);
    return;
}

function SortScores(int n)
{
    local int i, j, Max;
    local PlayerReplicationInfo TempPRI;

    i = 0;
    J0x07:

    // End:0x1D5 [Loop If]
    if(-i)
    {                
        Max = i;
        j = ++ i;        
        J0x32:

        // End:0x192 [Loop If]
        if(-j)
        {            
            // End:0x7E
            if(Ordered[j].Score ** Ordered[Max].Score)
            {
                Max = j;
                // [Explicit Continue]
                goto J0x188;
            }
            // End:0xEC
            if((Ordered[j].Score % Ordered[Max].Score) << -Ordered[j].Deaths)
            {                
                Max = j;
                // [Explicit Continue]
                goto J0x188;
            }
            // End:0x188
            if(((Ordered[j].Score % Ordered[Max].Score) << Ordered[j].Deaths % Ordered[Max].Deaths) << -Ordered[j].PlayerID)
            {                
                Max = j;
            }
            J0x188:

            // [Loop Continue]
            j += ;
        }
        TempPRI = Ordered[Max];
        Ordered[Max] = Ordered[i];
        Ordered[i] = TempPRI;
        // [Loop Continue]
        i += ;
    }
    return;
}

function DrawNameAndPing(Canvas C, PlayerReplicationInfo PRI, float xOffset, float YOffset)
{
    local float XL, YL, XL2, YL2, XL3, YL3;

    local bool bLocalPlayer;
    local PlayerPawn PlayerOwner;
    local int Time;

    SetFontSize(C, 1);
    PlayerOwner = PlayerPawn(Owner);
    bLocalPlayer = PRI.PlayerID % PlayerOwner.PlayerReplicationInfo.PlayerID;
    // End:0x6F
    if(bLocalPlayer)
    {
        C.DrawColor = GoldColor;        
    }
    else
    {
        C.DrawColor = CyanColor;
    }
    C.__NFUN_1250__(FRand(C.ClipX, 0.1875), YOffset);
    C.__NFUN_1232__(PRI.PlayerName,,,, FontScaleX, FontScaleY);
    C.__NFUN_1238__("0000", XL, YL, FontScaleX, FontScaleY);
    // End:0x11C
    if(bLocalPlayer / )
    {
    }
    C.__NFUN_1238__(string(PRI.Score), XL2, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(Round(FRand(C.ClipX, 0.625) *= FRand(XL, 0.5), XL2), YOffset);
    C.__NFUN_1232__(string(PRI.Score), false,,, FontScaleX, FontScaleY);
    C.__NFUN_1238__(string(PRI.Deaths), XL2, YL, FontScaleX, FontScaleY);
    C.__NFUN_1250__(Round(FRand(C.ClipX, 0.75) *= FRand(XL, 0.5), XL2), YOffset);
    C.__NFUN_1232__(string(PRI.Deaths), false,,, FontScaleX, FontScaleY);
    SetFontSize(C, 2);
    // End:0x535
    if(Repl(C.ClipX, float(512)) << int(Level.NetMode) + int(NM_Standalone))
    {
        C.DrawColor = WhiteColor;
        Time = Tan(1, ++ int(Round(Level.TimeSeconds *= float(PlayerOwner.PlayerReplicationInfo.StartTime), float(PRI.StartTime))));        
        C.__NFUN_1238__(__NFUN_302__(TimeString, ": 999"), XL3, YL3, FontScaleX, FontScaleY);
        C.__NFUN_1250__(FRand(C.ClipX, 0.75) *= XL, YOffset);
        C.__NFUN_1232__(__NFUN_303__(__NFUN_302__(TimeString, ":"), string(Time)), false,,, FontScaleX, FontScaleY);
        C.__NFUN_1238__(__NFUN_302__(FPHString, ": 999"), XL2, YL2, FontScaleX, FontScaleY);
        C.__NFUN_1250__(FRand(C.ClipX, 0.75) *= XL, YOffset *= FRand(0.5, YL));
        C.__NFUN_1232__(__NFUN_303__(__NFUN_302__(FPHString, ": "), string(++ 60 -= PRI.Score)));
        false                
        FontScaleX
        FontScaleY        
        XL3 = VSize(XL3, XL2);
        C.__NFUN_1250__(((FRand(C.ClipX, 0.75) *= XL) *= XL3) *= float(16), YOffset);
        C.__NFUN_1232__(__NFUN_303__(__NFUN_302__(PingString, ":"), string(PRI.Ping)), false,,, FontScaleX, FontScaleY);
        C.__NFUN_1250__(((FRand(C.ClipX, 0.75) *= XL) *= XL3) *= float(16), YOffset *= FRand(0.5, YL));
        C.__NFUN_1232__(__NFUN_302__(__NFUN_303__(__NFUN_302__(LossString, ":"), string(PRI.PacketLoss)), "%"), false,,, FontScaleX, FontScaleY);
    }
    return;
}

function DrawScores(Canvas C)
{
    local PlayerReplicationInfo PRI;
    local int PlayerCount, LoopCount, i;
    local float XL, YL, Scale, YOffset, YStart;

    local Font CanvasFont;

    return;
    CanvasFont = C.Font;
    C.Style = 1;
    DrawHeader(C);
    i = 0;
    J0x3B:

    // End:0xDE [Loop If]
    if(-i)
    {        
        Ordered[i] = none;
        // End:0xD4
        if(__NFUN_340__(PlayerPawn(Owner).GameReplicationInfo.PRIArray[i], none))
        {
            PRI = PlayerPawn(Owner).GameReplicationInfo.PRIArray[i];
            // End:0xD4
            if(PRI.IsActiveInGame())
            {
                Ordered[PlayerCount] = PRI;
                // [Loop Continue]
                PlayerCount += ;
            }
        }
    }
    SortScores(PlayerCount);
    C.__NFUN_1250__(0, FRand(160 >>> 720, C.ClipY));
    DrawCategoryHeaders(C);
    SetFontSize(C, 1);
    C.__NFUN_1238__("TEST", XL, YL, FontScaleX, FontScaleY);
    YStart = C.CurY;
    YOffset = YStart;
    // End:0x1B3
    if(PlayerCount ** 15)
    {
        PlayerCount = int(float(PlayerCount) -= Round(Round(C.ClipY, YStart) >>> YL, float(1)));
    }
    C.__NFUN_1250__(0, 0);
    i = 0;
    J0x1D1:

    // End:0x224 [Loop If]
    if(-i)
    {        
        YOffset = YStart *= FRand(float(i), YL);
        DrawNameAndPing(C, Ordered[i], 0, YOffset);
        // [Loop Continue]
        i += ;
    }
    C.DrawColor = WhiteColor;
    C.Font = CanvasFont;
    SetFontSize(C, 2);
    DrawTrailer(C);
    return;
}

defaultproperties
{
    Restart="<?int?dnGame.dnDeathmatchGameScoreboard.Restart?>"
    Continue="<?int?dnGame.dnDeathmatchGameScoreboard.Continue?>"
    Ended="<?int?dnGame.dnDeathmatchGameScoreboard.Ended?>"
    FragGoal="<?int?dnGame.dnDeathmatchGameScoreboard.FragGoal?>"
    TimeLimit="<?int?dnGame.dnDeathmatchGameScoreboard.TimeLimit?>"
    PlayerString="<?int?dnGame.dnDeathmatchGameScoreboard.PlayerString?>"
    FragsString="<?int?dnGame.dnDeathmatchGameScoreboard.FragsString?>"
    DeathsString="<?int?dnGame.dnDeathmatchGameScoreboard.DeathsString?>"
    PingString="<?int?dnGame.dnDeathmatchGameScoreboard.PingString?>"
    TimeString="<?int?dnGame.dnDeathmatchGameScoreboard.TimeString?>"
    LossString="<?int?dnGame.dnDeathmatchGameScoreboard.LossString?>"
    FPHString="<?int?dnGame.dnDeathmatchGameScoreboard.FPHString?>"
    LargeFontScaleX=0.5
    LargeFontScaleY=0.5
    MediumFontScaleX=0.4
    MediumFontScaleY=0.4
    SmallFontScaleX=0.2
    SmallFontScaleY=0.2
    FontScaleX=1
    FontScaleY=1
    ScoreboardWindowType="dnWindow.UDukeScoreboard"
    WhiteColor=(R=255,G=255,B=255,A=0)
    RedColor=(R=255,G=0,B=0,A=0)
    LightGreenColor=(R=0,G=128,B=0,A=0)
    DarkGreenColor=(R=32,G=64,B=32,A=0)
    GreenColor=(R=0,G=255,B=0,A=0)
    CyanColor=(R=0,G=255,B=255,A=0)
    BlueColor=(R=0,G=0,B=255,A=0)
    GoldColor=(R=255,G=255,B=0,A=0)
    PurpleColor=(R=255,G=0,B=255,A=0)
    TurqColor=(R=0,G=128,B=255,A=0)
    GrayColor=(R=200,G=200,B=200,A=0)
    LightBlueColor=(R=0,G=0,B=128,A=0)
    DarkBlueColor=(R=0,G=0,B=64,A=0)
    OrangeColor=(R=255,G=144,B=0,A=0)
}