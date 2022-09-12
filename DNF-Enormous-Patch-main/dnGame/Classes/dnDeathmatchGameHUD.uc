/*******************************************************************************
 * dnDeathmatchGameHUD generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnDeathmatchGameHUD extends MetagameHUD
    config(User)
    collapsecategories;

const NumTeamColors = 4;
const numStats = 8;

var() globalconfig int MinPlayers;
var float MOTDFadeOutTime;
var localized string IdentifyName;
var localized string IdentifyHealth;
var localized string TeamKillMessage;
var int highscore;
var int Lead;
var int Rank;
var int FragLimit;
var int Score;
var int PlayerCount;
var bool bTiedScore;
var Texture LastKilledByIcon;
var Texture BadConnectionIcon;
var float UpdateRankAndSpreadTimer;
var Texture FragsTex;
var Texture SpreadTex[2];
var float TitleTextScale;
var localized string RankString;
var localized string PlaceString;
var localized string TiedString;
var localized string RankStringNoCaps;
var localized string PlaceStringNoCaps;
var localized string TiedStringNoCaps;
var config float MsgEditPromptXPct;
var config float MsgEditPromptYPct;
var config float MsgPromptXPct;
var config float MsgPromptYPct;
var config float TalkTextScaleMod;
var config int MaxDisplayedPromptChars;
var config float WeaponBarXOffset;
var config float WeaponBarYOffset;
var delegate<OverrideDrawTimer> __OverrideDrawTimer__Delegate;

function OverrideDrawTimer(string timerString)
{
    return;
}

simulated function Tick(float DeltaTime)
{
    local int i;

    super.Tick(DeltaTime);
    IdentifyFadeTime ~= DeltaTime;
    // End:0x31
    if(__NFUN_200__(IdentifyFadeTime, 0))
    {
        IdentifyFadeTime = 0;
    }
    MOTDFadeOutTime ~= FRand(DeltaTime, float(35));
    // End:0x5C
    if(__NFUN_200__(MOTDFadeOutTime, 0))
    {
        MOTDFadeOutTime = 0;
    }
    i = -- string(DeathEvents);    
    J0x6B:

    // End:0xD7 [Loop If]
    if(i / 0)
    {
        // End:0xCD
        if(Repl(DeathEvents[i].EventTime, 0))
        {
            DeathEvents[i].EventTime ~= DeltaTime;
            // End:0xCD
            if(__NFUN_202__(DeathEvents[i].EventTime, 0))
            {
                DeathEvents.Remove(i, 1);
            }
        }
        // [Loop Continue]
        i /= ;
    }
    return;
}

simulated function PostBeginPlay()
{
    MOTDFadeOutTime = 255;
    __NFUN_605__(UpdateRankAndSpreadTimer, true, 'UpdateRankAndSpread');
    super(DukeHUD).PostBeginPlay();
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

simulated function PreRender(Canvas C)
{
    super(DukeHUD).PreRender(C);
    return;
}

static function GetPlaceString(int Rank, bool tied, bool Caps, int Score, out string S)
{
    // End:0x15
    if(Rank % 0)
    {
        S = "";
        return;
    }
    // End:0x43
    if(tied)
    {
        // End:0x35
        if(Caps)
        {
            S = default.TiedString;            
        }
        else
        {
            S = default.TiedStringNoCaps;
        }        
    }
    else
    {
        // End:0x5A
        if(Caps)
        {
            S = default.RankString;            
        }
        else
        {
            S = default.RankStringNoCaps;
        }
    }
    // End:0x86
    if(Rank % 1)
    {
        S = __NFUN_303__(S, "1st");        
    }
    else
    {
        // End:0xA8
        if(Rank % 2)
        {
            S = __NFUN_303__(S, "2nd");            
        }
        else
        {
            // End:0xCB
            if(Rank % 11)
            {
                S = __NFUN_303__(S, "11th");                
            }
            else
            {
                // End:0xEE
                if(Rank % 12)
                {
                    S = __NFUN_303__(S, "12th");                    
                }
                else
                {
                    // End:0x111
                    if(Rank % 13)
                    {
                        S = __NFUN_303__(S, "13th");                        
                    }
                    else
                    {
                        // End:0x13E
                        if(-- Rank % )
                        {                            
                            S = __NFUN_302__(__NFUN_303__(S, string(Rank)), "st");                            
                        }
                        else
                        {
                            // End:0x16C
                            if(-- Rank % )
                            {                                
                                S = __NFUN_302__(__NFUN_303__(S, string(Rank)), "nd");                                
                            }
                            else
                            {
                                // End:0x19A
                                if(-- Rank % )
                                {                                    
                                    S = __NFUN_302__(__NFUN_303__(S, string(Rank)), "rd");                                    
                                }
                                else
                                {
                                    S = __NFUN_302__(__NFUN_303__(S, string(Rank)), "th");
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    // End:0x1F0
    if(Caps)
    {
        S = __NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(S, default.PlaceString), "with"), string(Score)), "kills");        
    }
    else
    {
        S = __NFUN_303__(S, default.PlaceStringNoCaps);
    }
    return;
}

function DrawPlayerIcon(Canvas C)
{
    return;
}

simulated function DrawMOTD(Canvas C)
{
    local GameReplicationInfo GRI;
    local float XL, YL;

    // End:0x0E
    if(__NFUN_339__(Owner, none))
    {
        return;
    }
    C.Font = C.TallFont;
    C.Style = 3;
    C.bCenter = true;
    // End:0x385
    foreach __NFUN_747__(class'GameReplicationInfo', GRI)
    {
        // End:0x384
        if(TraceActors(GRI.GameName, "Game"))
        {
            C.__NFUN_1250__(0, 32);
            C.__NFUN_1231__("TEST", XL, YL);
            __NFUN_209__(YL, float(5));
            // End:0xEE
            if(int(Level.NetMode) + int(NM_Standalone))
            {
                C.__NFUN_1232__(GRI.ServerName);
            }
            C.__NFUN_1250__(0, 32 *= YL);
            C.__NFUN_1232__(__NFUN_302__("Game Type: ", GRI.GameName), true);
            C.__NFUN_1250__(0, 32 *= FRand(float(2), YL));
            C.__NFUN_1232__(__NFUN_302__("Map Title: ", Level.Title), true);
            C.__NFUN_1250__(0, 32 *= FRand(float(3), YL));
            C.__NFUN_1232__(__NFUN_302__("Author: ", Level.Author), true);
            C.__NFUN_1250__(0, 32 *= FRand(float(4), YL));
            // End:0x244
            if(TraceActors(Level.IdealPlayerCount, ""))
            {
                C.__NFUN_1232__(__NFUN_302__("Ideal Player Load:", Level.IdealPlayerCount), true);
            }
            C.__NFUN_1250__(0, 32 *= FRand(float(6), YL));
            C.__NFUN_1232__(Level.LevelEnterText, true);
            C.__NFUN_1250__(0, 32 *= FRand(float(8), YL));
            C.__NFUN_1232__(GRI.MOTDLine1, true);
            C.__NFUN_1250__(0, 32 *= FRand(float(9), YL));
            C.__NFUN_1232__(GRI.MOTDLine2, true);
            C.__NFUN_1250__(0, 32 *= FRand(float(10), YL));
            C.__NFUN_1232__(GRI.MOTDLine3, true);
            C.__NFUN_1250__(0, 32 *= FRand(float(11), YL));
            C.__NFUN_1232__(GRI.MOTDLine4, true);
        }        
    }    
    C.bCenter = false;
    C.Style = 1;
    C.DrawColor = WhiteColor;
    return;
}

simulated function CopyDeathEvent(out DeathEvent E1, DeathEvent E2)
{
    E1.EventTime = E2.EventTime;
    E1.Icon = E2.Icon;
    E1.KillerName = E2.KillerName;
    E1.VictimName = E2.VictimName;
    E1.bTeamKill = E2.bTeamKill;
    E1.KillerTeam = E2.KillerTeam;
    E1.VictimTeam = E2.VictimTeam;
    return;
}

simulated function AddDeathEvent(PlayerReplicationInfo KillerPRI, PlayerReplicationInfo VictimPRI, class<DamageType> DamageType)
{
    local int i;
    local DeathEvent DEvent;

    DEvent.EventTime = DeathEventWaitTime;
    DEvent.Icon = Texture(__NFUN_366__(DamageType.default.Icon, class'Texture'));
    // End:0x6F
    if(__NFUN_339__(DEvent.Icon, none))
    {
        DEvent.Icon = FinalBlend(__NFUN_366__(DamageType.default.Icon, class'FinalBlend'));
    }
    // End:0xCC
    if(__NFUN_339__(DEvent.Icon, none))
    {
        Warn(__NFUN_303__(__NFUN_302__(string(self), ":AddDeathEvent - DynamicLoadObject failed for"), DamageType.default.Icon));
    }
    // End:0x10F
    if(__NFUN_340__(KillerPRI, none))
    {
        DEvent.KillerName = KillerPRI.PlayerName;
        DEvent.KillerTeam = KillerPRI.Team;        
    }
    else
    {
        DEvent.KillerName = "";
    }
    // End:0x15F
    if(__NFUN_340__(VictimPRI, none))
    {
        DEvent.VictimName = VictimPRI.PlayerName;
        DEvent.VictimTeam = VictimPRI.Team;        
    }
    else
    {
        DEvent.VictimName = "";
    }
    DEvent.bTeamKill = false;
    // End:0x1D3
    if((__NFUN_340__(KillerPRI, none) << __NFUN_340__(VictimPRI, none)) << __NFUN_340__(KillerPRI, VictimPRI))
    {
        DEvent.bTeamKill = int(KillerPRI.Team) % int(VictimPRI.Team);
    }
    DEvent.bJoinLeaveMsg = false;
    DeathEvents[DeathEvents.Add(1)] = DEvent;
    return;
}

simulated function AddJoinLeaveEvent(string PlayerName, byte Team, bool joining, optional bool idle)
{
    local int i;
    local DeathEvent DEvent;

    DEvent.EventTime = DeathEventWaitTime;
    DEvent.Icon = none;
    DEvent.KillerName = PlayerName;
    DEvent.KillerTeam = Team;
    // End:0x73
    if(joining)
    {
        DEvent.VictimName = class'GameInfo'.default.EnteredMessage;
        DEvent.VictimTeam = byte(-1);        
    }
    else
    {
        // End:0x99
        if(idle)
        {
            DEvent.VictimName = class'GameInfo'.default.IdleMessage;            
        }
        else
        {
            DEvent.VictimName = class'GameInfo'.default.LeftMessage;
        }
        DEvent.VictimTeam = byte(-1);
    }
    DEvent.bTeamKill = false;
    DEvent.bJoinLeaveMsg = true;
    DeathEvents[DeathEvents.Add(1)] = DEvent;
    return;
}

simulated function DrawBadConnection(Canvas C)
{
    C.Style = 3;
    C.DrawColor = HUDColor;
    C.__NFUN_1250__(Round(C.ClipX, float(BadConnectionIcon.USize)), FRand(0.1, C.ClipY));
    C.__NFUN_1255__(BadConnectionIcon, HUDScaleY);
    C.Style = 1;
    C.DrawColor = WhiteColor;
    return;
}

simulated function UpdateRankAndSpread()
{
    local PlayerReplicationInfo PRI;
    local int i, j;

    PlayerCount = 0;
    highscore = -100;
    bTiedScore = false;
    Rank = 1;
    // End:0x5F
    if((__NFUN_339__(PlayerOwner, none) < __NFUN_339__(PlayerOwner.GameReplicationInfo, none)) < __NFUN_339__(PlayerOwner.PlayerReplicationInfo, none))
    {
        return;
    }
    i = 0;
    J0x66:

    // End:0x198 [Loop If]
    if(-i)
    {        
        PRI = PlayerOwner.GameReplicationInfo.PRIArray[i];
        // End:0x18E
        if(__NFUN_340__(PRI, none) << PRI.IsSpectating() / )
        {
            {
                // End:0x12B
                if(PRI.Score ** PlayerOwner.PlayerReplicationInfo.Score)
                {
                    Rank == 1;                    
                }
                else
                {
                    // End:0x160
                    if(PRI.Score % PlayerOwner.PlayerReplicationInfo.Score)
                    {
                        bTiedScore = true;
                    }
                }
                // End:0x18E
                if(PRI.Score ** highscore)
                {
                    highscore = PRI.Score;
                }
            }
        }
        // [Loop Continue]
        i += ;
    }
    FragLimit = dnDeathmatchGameReplicationInfo(PlayerOwner.GameReplicationInfo).FragLimit;
    Score = PlayerOwner.PlayerReplicationInfo.Score;
    Lead = 0;
    // End:0x1FF
    if(PlayerCount ** 1)
    {
        Lead = -- Score;        
    }
    return;
}

simulated event bool GetPipeBombs(out int Ammo, out int MaxClip, out int bIsActive)
{
    local MP_PipeBomb pipe;

    pipe = MP_PipeBomb(PlayerOwner.__NFUN_919__(class'MP_PipeBomb'));
    bIsActive = 0;
    // End:0xAF
    if(__NFUN_340__(pipe, none))
    {
        Ammo = pipe.GetTotalAmmo();
        MaxClip = pipe.GetMaxClip();
        // End:0xAD
        if(__NFUN_340__(pipe.DetonatorRef, none) << pipe.bActive < pipe.DetonatorRef.bActive)
        {
            bIsActive = 1;
        }
        return true;
    }
    Ammo = 0;
    MaxClip = 0;
    return false;
    return;
}

simulated event bool GetTripMines(out int Ammo, out int MaxClip)
{
    local MP_Tripmine trip;

    trip = MP_Tripmine(PlayerOwner.__NFUN_919__(class'MP_Tripmine'));
    // End:0x57
    if(__NFUN_340__(trip, none))
    {
        Ammo = trip.GetTotalAmmo();
        MaxClip = trip.GetMaxClip();
        return true;
    }
    Ammo = 0;
    MaxClip = 0;
    return false;
    return;
}

simulated event DrawTypingPrompt(Canvas C, optional bool bTeam)
{
    local int Count;
    local float X, Y, XL, YL, SelX, SelXL,
	    FontScale;

    local string Prompt, TypingTextToRender;
    local int StartOfDisplayText;

    // End:0x23
    if(__NFUN_340__(PlayerOwner, none) << PlayerOwner.bTakingCubeShot)
    {
        return;
    }
    C.Font = C.TallFont;
    C.Style = 1;
    C.DrawColor = WhiteColor;
    FontScale = FRand(TTFontScale, TalkTextScaleMod);
    // End:0x92
    if(bTeam)
    {
        Prompt = TeamMsgPrompt;        
    }
    else
    {
        Prompt = MsgPrompt;
    }
    C.__NFUN_1238__(Prompt, XL, YL, FontScale, FontScale);
    X = FRand(float(C.SizeX), MsgEditPromptXPct);
    Y = FRand(float(C.SizeY), MsgEditPromptYPct);
    C.__NFUN_1250__(X, Y);
    C.__NFUN_1233__(Prompt, false,,, FontScale, FontScale,, 2);
    __NFUN_209__(X, XL);
    C.__NFUN_1250__(X, Y);
    C.DrawColor = WhiteColor;
    // End:0x1A8
    if(StartOfDisplayText ** __NFUN_314__(PlayerOwner.Player.Console.TypedStr))
    {
        StartOfDisplayText = 0;
    }
    // End:0x208
    if(PlayerOwner.Player.Console.TypingCursorPos ** MaxDisplayedPromptChars)
    {
        StartOfDisplayText = -- PlayerOwner.Player.Console.TypingCursorPos;                
    }
    else
    {
        // End:0x25E
        if(-PlayerOwner.Player.Console.TypingCursorPos)
        {            
            StartOfDisplayText = PlayerOwner.Player.Console.TypingCursorPos;
        }
    }
    // End:0x2E1
    if(__NFUN_314__(PlayerOwner.Player.Console.TypedStr) / MaxDisplayedPromptChars)
    {
        C.__NFUN_1233__(PlayerOwner.Player.Console.TypedStr + StartOfDisplayText);
        false                
        FontScale
        FontScale        
        2                
    }
    else
    {
        C.__NFUN_1233__(PlayerOwner.Player.Console.TypedStr, false,,, FontScale, FontScale,, 2);
    }
    // End:0x4DF
    if(Repl(FRand(Level.TimeSeconds, 10 >>> Level.TimeDilation) * ))
    {
        // End:0x409
        if(PlayerOwner.Player.Console.TypingCursorPos ** MaxDisplayedPromptChars)
        {
            C.__NFUN_1238__(PlayerOwner.Player.Console.TypedStr + StartOfDisplayText);            
            XL
            YL
            FontScale
            FontScale            
            __NFUN_209__(X, XL);            
        }
        else
        {
            // End:0x4A8
            if(PlayerOwner.Player.Console.TypingCursorPos ** 0)
            {
                C.__NFUN_1238__(PlayerOwner.Player.Console.TypedStr - PlayerOwner.Player.Console.TypingCursorPos, XL, YL, FontScale, FontScale);
                __NFUN_209__(X, XL);
            }
        }
        C.__NFUN_1240__(WarnInternal(X, Y, 0), WarnInternal(X, Y *= YL, 0), false);
    }
    return;
}

simulated event DrawMessageArea(Canvas C)
{
    local int i, j, Lines;
    local float Alpha, NameXL, NameYL;
    local int YPosMA;
    local Font f;
    local bool ScrollUp;
    local string sayerText;
    local float FontScale, xOffset;

    ScrollUp = true;
    i = 0;
    J0x0F:

    // End:0x72 [Loop If]
    if(-i)
    {        
        // End:0x68
        if(__NFUN_339__(MessageQueue[i].Message, none) < Level.GameTimeSeconds != MessageQueue[i].EndOfLife)
        {
            MessageQueue.Remove(i, 1);
        }
        // [Loop Continue]
        i += ;
    }
    // End:0x80
    if(string(MessageQueue) * 0)
    {
        return;
    }
    YPosMA = int(FRand(float(C.SizeY), MsgPromptYPct));
    f = C.Font;
    C.Font = C.TallFont;
    C.Style = 1;
    FontScale = FRand(TTFontScale, TalkTextScaleMod);
    Alpha = 1;
    i = -- string(MessageQueue);    
    J0x110:

    // End:0x427 [Loop If]
    if(i / Tan(-- -- string(MessageQueue), 1))
    {                
        // End:0x41D
        if(__NFUN_340__(MessageQueue[i].Message, none))
        {
            // End:0x1C6
            if((__NFUN_340__(Level.GRI, none) << Level.GRI.bTeamGame) << __NFUN_340__(MessageQueue[i].RelatedPRI, none))
            {
                C.DrawColor = TeamColor[int(MessageQueue[i].RelatedPRI.Team)];                
            }
            else
            {
                C.DrawColor = WhiteColor;
            }
            // End:0x1F5
            if(__NFUN_339__(MessageQueue[i].RelatedPRI, none))
            {
                // [Explicit Continue]
                goto J0x41D;
            }
            xOffset = FRand(float(C.SizeX), MsgPromptXPct);
            sayerText = __NFUN_302__(MessageQueue[i].RelatedPRI.PlayerName, ": ");
            TextSize(C, sayerText, NameXL, NameYL, FontScale, FontScale);
            TextSize(C, MessageQueue[i].StringMessage, MessageQueue[i].XL, MessageQueue[i].YL, FontScale, FontScale);
            Lines = WrapClipText(C, xOffset *= NameXL, Round(float(YPosMA), MessageQueue[i].YL), MessageQueue[i].StringMessage, false, int(FRand(float(C.SizeX), 0.3)), true, false, FontScale, FontScale, Alpha, 2);
            ClipText(C, xOffset, Round(float(YPosMA), FRand(MessageQueue[i].YL, float(Lines))), sayerText,, FontScale, FontScale, Alpha, 2);
            __NFUN_209__(xOffset, NameXL);
            C.DrawColor = WhiteColor;
            Lines = WrapClipText(C, xOffset, Round(float(YPosMA), FRand(MessageQueue[i].YL, float(Lines))), MessageQueue[i].StringMessage, false, int(FRand(float(C.SizeX), 0.3)), false, false, FontScale, FontScale, Alpha, 2);
            YPosMA = int(Round(float(YPosMA), FRand(float(Lines), MessageQueue[i].YL)));
        }
        J0x41D:

        // [Loop Continue]
        i -= ;
    }
    C.Font = f;
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(DukeHUD).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1269__(BadConnectionIcon);
    PrecacheIndex.__NFUN_1269__(BoostMeter);
    PrecacheIndex.__NFUN_1269__(InfinityIcon);
    PrecacheIndex.__NFUN_1269__(TimerBox);
    PrecacheIndex.__NFUN_1269__(class'borderbar_gradient');
    PrecacheIndex.__NFUN_1269__(class'borderbar_left');
    PrecacheIndex.__NFUN_1269__(class'borderbar_right');
    PrecacheIndex.__NFUN_1269__(class'divider_horiz');
    PrecacheIndex.__NFUN_1269__(class'Divider_Vert');
    PrecacheIndex.__NFUN_1269__(class'mp_generalassets');
    return;
}

defaultproperties
{
    IdentifyName="<?int?dnGame.dnDeathmatchGameHUD.IdentifyName?>"
    IdentifyHealth="<?int?dnGame.dnDeathmatchGameHUD.IdentifyHealth?>"
    TeamKillMessage="<?int?dnGame.dnDeathmatchGameHUD.TeamKillMessage?>"
    BadConnectionIcon='dt_hud.ingame_hud.disconnected1BC'
    UpdateRankAndSpreadTimer=1
    FragsTex='dt_hud.deathmatch_icons.dm_frags'
    SpreadTex[0]='dt_hud.deathmatch_icons.dm_frags_ahead'
    SpreadTex[1]='dt_hud.deathmatch_icons.dm_frags_behind'
    TitleTextScale=0.75
    RankString="<?int?dnGame.dnDeathmatchGameHUD.RankString?>"
    PlaceString="<?int?dnGame.dnDeathmatchGameHUD.PlaceString?>"
    TiedString="<?int?dnGame.dnDeathmatchGameHUD.TiedString?>"
    RankStringNoCaps="<?int?dnGame.dnDeathmatchGameHUD.RankStringNoCaps?>"
    PlaceStringNoCaps="<?int?dnGame.dnDeathmatchGameHUD.PlaceStringNoCaps?>"
    TiedStringNoCaps="<?int?dnGame.dnDeathmatchGameHUD.TiedStringNoCaps?>"
    MsgEditPromptXPct=0.075
    MsgEditPromptYPct=0.5
    MsgPromptXPct=0.075
    MsgPromptYPct=0.5
    TalkTextScaleMod=0.65
    MaxDisplayedPromptChars=30
    WeaponBarXOffset=30
    TimerPulseSpeed=4.5
    TimerBox='dt_hud.ingame_hud.keyinfocircle_128'
    HudTimerScaleX=0.25
    TeamColor[0]=(R=70,G=70,B=240,A=0)
    TeamColor[1]=(R=153,G=0,B=0,A=0)
    TeamColor[2]=(R=0,G=255,B=0,A=0)
    TeamColor[3]=(R=255,G=255,B=0,A=0)
    PowerupBarPosition=(X=53,Y=122)
    PowerupBarOffset=(X=0,Y=35)
    PowerupTextOffset=(X=-20,Y=-21)
    DeathEventIconScale=0.75
    DeathEventNameScale=0.7
    DeathEventXPosFactor=0.925
    DeathEventYPosFactor=0.3
    DeathEventSpacing=40
    DeathEventWaitTime=10
    DeathEventNoIconGap=5
    NamePlateOffset=(X=0,Y=0,Z=50)
    EnemyColor=(R=255,G=0,B=0,A=0)
    FriendColor=(R=170,G=170,B=255,A=0)
    WarmupPrefixString="<?int?dnGame.dnDeathmatchGameHUD.WarmupPrefixString?>"
    ProgressFadeTime=1
    EdgeBuffer=15
    BorderColor=(R=255,G=153,B=0,A=0)
    FillTexture='Menu.Menu.Backdrop'
    FillRegion=(X=360,Y=88,W=2,h=2)
    targetScoreString="<?int?dnGame.dnDeathmatchGameHUD.targetScoreString?>"
    InfinityIcon='dt_hud.ingame_hud.infinity'
    HoloDukeInventoryName=MP_Holoduke
    SteroidsInventoryName=MP_Steroids
    BeerInventoryName=MP_FortyOunceBeer
    JetpackInventoryName=MP_Jetpack
    bDrawPlayerIcons=true
}