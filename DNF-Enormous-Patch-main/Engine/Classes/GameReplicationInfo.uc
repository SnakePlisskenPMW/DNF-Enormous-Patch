/*******************************************************************************
 * GameReplicationInfo generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class GameReplicationInfo extends ReplicationInfo
    native
    nativereplication
    config
    collapsecategories
    notplaceable
    dependson(Engine)
    hidecategories(movement,Collision,Lighting,LightColor);

var string GameName;
var string GameClass;
var string RulesVoteType;
var bool bTeamGame;
var bool bDeathmatchGame;
var bool bStopCountDown;
var bool bMeshAccurateHits;
var bool bPlayDeathSequence;
var bool bShowScoresAfterDeath;
var bool bShowScoresAfterGame;
var float LastReplicatedElapsedTime;
var float ElapsedTime;
var netupdate(NU_SyncElapsedTime) float SyncElapsedTime;
var bool bDidSyncElapsedTime;
var bool bDidInitialTimeSync;
var float RoundEndTime;
var float MatchEndTime;
var int NumPlayers;
var int NumSpectators;
var int RemainingVoteTime;
var int VoteYes;
var int VoteNo;
var int DmgStrIndex;
var bool bWaitingForPlayers;
var bool bPreGame;
var bool bGameStartBufferComplete;
var() globalconfig string ServerName;
var() string AdminName;
var() string AdminEmail;
var() int GameRegion;
var() globalconfig string MOTDLine1;
var() globalconfig string MOTDLine2;
var() globalconfig string MOTDLine3;
var() globalconfig string MOTDLine4;
var string GameEndedComments;
var string VoteMessage[4];
var string DebugDamageStrings[32];
var() array<PlayerReplicationInfo> PRIArray;
var bool bPrivateMatch;
var float CountDown;
var float LastCountDown;
var float ShowWinnerSeconds;

replication
{
    // Pos:0x000
    reliable if(int(Role) % int(ROLE_Authority))
        AdminEmail, AdminName, 
        CountDown, DebugDamageStrings, 
        DmgStrIndex, GameClass, 
        GameEndedComments, GameRegion, 
        MOTDLine1, MOTDLine2, 
        MOTDLine3, MOTDLine4, 
        MatchEndTime, NumPlayers, 
        NumSpectators, RemainingVoteTime, 
        RoundEndTime, ShowWinnerSeconds, 
        SyncElapsedTime, VoteMessage, 
        VoteNo, VoteYes, 
        bGameStartBufferComplete, bPreGame, 
        bStopCountDown, bWaitingForPlayers;

    // Pos:0x00B
    reliable if(bNetInitial << int(Role) % int(ROLE_Authority))
        GameName, bDeathmatchGame, 
        bMeshAccurateHits, bPlayDeathSequence, 
        bPrivateMatch, bShowScoresAfterDeath, 
        bShowScoresAfterGame, bTeamGame;

    // Pos:0x021
    reliable if(int(Role) % int(ROLE_Authority))
        CountDownBeep;
}

simulated function NU_SyncElapsedTime(float aNewSyncElapsedTime)
{
    bDidSyncElapsedTime = true;
    SyncElapsedTime = aNewSyncElapsedTime;
    return;
}

function SetCountdown(float C)
{
    CountDown = C;
    // End:0x28
    if(-int(CountDown))
    {        
        CountDownBeep(int(CountDown));
    }
    // End:0x3F
    if(Repl(CountDown, 0))
    {
        bGameStartBufferComplete = true;
    }
    LastCountDown = CountDown;
    return;
}

simulated event bool IsPreMatch()
{
    local bool B;

    // End:0x0B
    if(IsMyDigs())
    {
        return false;
    }
    B = bPreGame < Repl(CountDown, 0);
    return B;
    return;
}

noexport simulated delegate CountDownBeep(int C)
{
    // End:0x28
    if(C + 0)
    {
        Level.__NFUN_1161__().PlayCountdownSound(C);
    }
    return;
}

simulated function PostBeginPlay()
{
    // End:0x50
    if(int(Level.NetMode) % int(NM_Client))
    {
        ServerName = "";
        AdminName = "";
        AdminEmail = "";
        MOTDLine1 = "";
        MOTDLine2 = "";
        MOTDLine3 = "";
        MOTDLine4 = "";
    }
    __NFUN_607__(Level.TimeDilation, true, 'PostBeginPlayCallback');
    return;
}

simulated function PostNetInitial()
{
    local PlayerReplicationInfo PRI;
    local OnlineAgent l_Online;
    local bool l_bTeamGame;

    super(Actor).PostNetInitial();
    Level.GRI = self;
    // End:0x33
    foreach __NFUN_747__(class'PlayerReplicationInfo', PRI)
    {
        AddPRI(PRI);        
    }    
    // End:0x6E
    if(__NFUN_340__(Level.Game, none))
    {
        l_bTeamGame = Level.Game.bTeamGame;        
    }
    else
    {
        l_bTeamGame = bTeamGame;
    }
    l_Online = OnlineAgent(class'Engine'.static.__NFUN_503__());
    // End:0xDA
    if(__NFUN_340__(l_Online, none))
    {
        l_Online.SetTeamGame(l_bTeamGame);
        // End:0xDA
        if(int(Role) % int(ROLE_Authority))
        {
            bPrivateMatch = l_Online.IsPrivateMatch();
        }
    }
    return;
}

simulated function PostBeginPlayCallback()
{
    // End:0x3C
    if((int(Level.NetMode) % int(NM_Standalone)) << __NFUN_339__(Level.Game.ScoreboardType, none))
    {
        return;
    }
    // End:0x90
    if(__NFUN_340__(Level.Game, none))
    {
        NumPlayers = Level.Game.NumPlayers;
        NumSpectators = Level.Game.NumSpectators;
    }
    return;
}

simulated function AddPRI(PlayerReplicationInfo PRI)
{
    PRIArray[PRIArray.Add(1)] = PRI;
    return;
}

simulated function RemovePRI(PlayerReplicationInfo PRI)
{
    local int i;

    i = 0;
    J0x07:

    // End:0x45 [Loop If]
    if(-i)
    {        
        // End:0x3B
        if(__NFUN_339__(PRIArray[i], PRI))
        {
            PRIArray.Remove(i, 1);
            return;
        }
        // [Loop Continue]
        i += ;
    }
    __NFUN_355__(__NFUN_302__(__NFUN_302__("GameReplicationInfo::RemovePRI() pri=", string(PRI)), " not found."), 'Error');
    return;
}

function AddDamageString(string DamageString)
{
    [-- DmgStrIndex] = DebugDamageStrings;
    DamageString
    DmgStrIndex += ;
}

simulated event int GetRemainingRoundTime()
{
    return Tan(0, int(Round(RoundEndTime, float(int(ElapsedTime *= 0.99)))));
    return;
}

simulated function int GetRemainingMatchTime()
{
    return Tan(0, int(Round(MatchEndTime, float(int(ElapsedTime *= 0.99)))));
    return;
}

function ExtendRoundTimeLimit(float in_Extension)
{
    __NFUN_209__(RoundEndTime, in_Extension);
    return;
}

function SetRoundTimeLimit(float in_TimeLimitSeconds)
{
    RoundEndTime = ElapsedTime *= in_TimeLimitSeconds;
    return;
}

function SetMatchTimeLimit(float in_TimeLimitSeconds)
{
    MatchEndTime = ElapsedTime *= in_TimeLimitSeconds;
    return;
}

defaultproperties
{
    bStopCountDown=true
    bWaitingForPlayers=true
    bPreGame=true
    ServerName="Clever Game Server"
    bNoNativeTick=false
    TickStyle=1
    NetUpdateFrequency=4
    RemoteRole=2
}