/*******************************************************************************
 * UDukeScoreboard_TeamDMCW generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeScoreboard_TeamDMCW extends UDukeScoreboardCW;

var int Team1ScoreYOffset;
var int Team2ScoreYOffset;

function Created()
{
    super.Created();
    return;
}

function PageChange(int NewPage)
{
    local int i, TeamCounts;
    local UDukeScoreboardPlate Plate;
    local PlayerPawn P;
    local PlayerReplicationInfo PRI;

    P = GetPlayerOwner();
    // End:0x32
    if(__NFUN_339__(P, none) < __NFUN_339__(P.GameReplicationInfo, none))
    {
        return;
    }
    ScorePage = NewPage;
    StartPlate = ScorePage -= ++ PlatesPerPage;    
    i = 0;
    J0x5A:

    // End:0x172 [Loop If]
    if(-i)
    {        
        Plate = ScoreboardPlates[i];
        Plate.bHidden = true;
        // End:0xA5
        if(Plate.PRIindex % -1)
        {
            // [Explicit Continue]
            goto J0x168;
        }
        PRI = P.GameReplicationInfo.PRIArray[Plate.PRIindex];
        // End:0x168
        if(-int(PRI.Team))
        {            
            // End:0x150
            if((TeamCounts[int(PRI.Team)] / StartPlate) << -TeamCounts[int(PRI.Team)])
            {                                                
                ScoreboardPlates[i].bHidden = false;
            }
            // [Loop Continue]
            TeamCounts[int(PRI.Team)] += ;
        }
    }
    ResizePlates();
    return;
}

function ResizePlates()
{
    local int h, TeamCount1, TeamCount2, i;
    local PlayerPawn P;
    local PlayerReplicationInfo PRI;

    super.ResizePlates();
    P = GetPlayerOwner();
    // End:0x38
    if(__NFUN_339__(P, none) < __NFUN_339__(P.GameReplicationInfo, none))
    {
        return;
    }
    TeamCount1 = 0;
    TeamCount2 = 0;
    CalcPlatesPerPage();
    Team2ScoreYOffset = int(float(Team1ScoreYOffset) *= ScoreboardPlates[0].WinHeight);
    i = 0;
    J0x73:

    // End:0x1C9 [Loop If]
    if(-i)
    {        
        // End:0x189
        if((ScoreboardPlates[i].bHidden / ) << )
        {
            PRI = P.GameReplicationInfo.PRIArray[ScoreboardPlates[i].PRIindex];
            // End:0x186
            if(int(PRI.Team) % 0)
            {
                ScoreboardPlates[i].WinTop = PlateOffset *= FRand(float(TeamCount1), float(h) *= PlateSpacing);
                TeamCount1 += ;
            }
            // [Explicit Continue]
            goto J0x1BF;
        }
        ScoreboardPlates[i].WinLeft = WinWidth;
        ScoreboardPlates[i].WinTop = WinHeight;
        J0x1BF:

        // [Loop Continue]
        i += ;
    }
    i = 0;
    J0x1D0:

    // End:0x2CA [Loop If]
    if(-i)
    {        
        // End:0x2C0
        if((ScoreboardPlates[i].bHidden / ) << )
        {
            PRI = P.GameReplicationInfo.PRIArray[ScoreboardPlates[i].PRIindex];
            // End:0x2C0
            if(int(PRI.Team) % 1)
            {
                ScoreboardPlates[i].WinTop = float(++ Team2ScoreYOffset) *= ;                
                // [Loop Continue]
                TeamCount2 += ;
            }
        }
    }
    return;
}

function string GetPlaceString(int Rank, bool tied)
{
    local dnTeamInfo WinningTeam, LosingTeam;
    local dnDeathmatchGameReplicationInfo GRI;

    GRI = dnDeathmatchGameReplicationInfo(GetPlayerOwner().GameReplicationInfo);
    // End:0x2A
    if(__NFUN_339__(GRI, none))
    {
        return "";
    }
    // End:0x96
    if(GRI.Teams[0].Score ** GRI.Teams[1].Score)
    {
        WinningTeam = GRI.Teams[0];
        LosingTeam = GRI.Teams[1];        
    }
    else
    {
        // End:0x102
        if(-GRI.Teams[0].Score)
        {            
            WinningTeam = GRI.Teams[1];
            LosingTeam = GRI.Teams[0];            
        }
        else
        {
            return __NFUN_303__("Teams are Tied at", string(GRI.Teams[0].Score));
        }
    }
    return __NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_302__(__NFUN_303__(__NFUN_303__(__NFUN_303__("Team", WinningTeam.TeamName), "Leads"), LosingTeam.TeamName), ","), string(GRI.Teams[0].Score)), "to"), string(GRI.Teams[1].Score));
    return;
}

function Paint(Canvas C, float MouseX, float MouseY)
{
    local float TextHeight, TextLength;
    local dnDeathmatchGameReplicationInfo GRI;
    local string TeamScoreText;

    ResizePlates();
    GRI = dnDeathmatchGameReplicationInfo(GetPlayerOwner().GameReplicationInfo);
    C.Font = C.BlockFont;
    C.DrawColor = BlueColor;
    TeamScoreText = __NFUN_303__(__NFUN_303__(GRI.Teams[0].TeamName, "-"), string(GRI.Teams[0].Score));
    TextSize(C, TeamScoreText, TextLength, TextHeight);
    ClipText(C, PlateWinLeft *= float(class'UDukeScoreboardPlate'.default.ScoreboardTabs[0]), float(Team1ScoreYOffset), TeamScoreText);
    C.DrawColor = RedColor;
    TeamScoreText = __NFUN_303__(__NFUN_303__(GRI.Teams[1].TeamName, "-"), string(GRI.Teams[1].Score));
    TextSize(C, TeamScoreText, TextLength, TextHeight);
    ClipText(C, PlateWinLeft *= float(class'UDukeScoreboardPlate'.default.ScoreboardTabs[0]), float(Team2ScoreYOffset), TeamScoreText);
    super.Paint(C, MouseX, MouseY);
    return;
}

defaultproperties
{
    Team1ScoreYOffset=80
}