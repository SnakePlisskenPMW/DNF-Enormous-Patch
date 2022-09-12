/*******************************************************************************
 * UDukeLobbyCW generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeLobbyCW extends UDukePageWindow;

var UWindowSmallButton StartGameButton;
var localized string StartGameText;
var UWindowSmallButton RestartGameButton;
var localized string RestartGameText;
var UWindowSmallButton NextMapButton;
var localized string NextMapText;
var UWindowSmallButton NewGameButton;
var localized string NewGameText;
var UWindowSmallButton JoinButton;
var localized string JoinText;
var UWindowSmallButton JoinTeam1Button;
var localized string JoinTeam1Text;
var UWindowSmallButton JoinTeam2Button;
var localized string JoinTeam2Text;
var UWindowSmallButton SpectateButton;
var localized string SpectateText;
var UWindowEditControl ChatEdit;
var UWindowSmallButton ChatButton;
var UWindowSmallButton DisconnectButton;
var localized string DisconnectText;
var localized string FragGoal;
var localized string TeamGoal;
var localized string TimeLimit;
var localized string RoundTimeLimit;
var Color GoldColor;

function Created()
{
    StartGameButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    StartGameButton.SetText(StartGameText);
    StartGameButton.SetFont(6);
    NewGameButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    NewGameButton.SetText(NewGameText);
    NewGameButton.SetFont(6);
    RestartGameButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    RestartGameButton.SetText(RestartGameText);
    RestartGameButton.SetFont(6);
    NextMapButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    NextMapButton.SetText(NextMapText);
    NextMapButton.SetFont(6);
    JoinButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    JoinButton.SetText(JoinText);
    JoinButton.SetFont(6);
    JoinTeam1Button = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    JoinTeam1Button.SetText(JoinTeam1Text);
    JoinTeam1Button.SetFont(6);
    JoinTeam2Button = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    JoinTeam2Button.SetText(JoinTeam2Text);
    JoinTeam2Button.SetFont(6);
    SpectateButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    SpectateButton.SetText(SpectateText);
    SpectateButton.SetFont(6);
    DisconnectButton = UWindowSmallButton(CreateControl(class'UWindowSmallButton', 1, 1, 1, 1));
    DisconnectButton.SetText(DisconnectText);
    DisconnectButton.SetFont(6);
    ChatEdit = UWindowEditControl(CreateControl(class'UWindowEditControl', 1, 1, 1, 1));
    ChatEdit.SetNumericOnly(false);
    ChatEdit.SetFont(0);
    ChatEdit.Align = 1;
    super.Created();
    return;
}

function BeforePaint(Canvas C, float X, float Y)
{
    local int YOff;

    super(UWindowWindow).BeforePaint(C, X, Y);
    YOff = int(Round(WinHeight, float(175)));
    StartGameButton.HideWindow();
    NewGameButton.HideWindow();
    RestartGameButton.HideWindow();
    NextMapButton.HideWindow();
    SpectateButton.HideWindow();
    JoinButton.HideWindow();
    JoinTeam1Button.HideWindow();
    JoinTeam2Button.HideWindow();
    // End:0x33B
    if(int(GetPlayerOwner().Level.NetMode) % int(NM_ListenServer))
    {
        // End:0x1EC
        if(GetPlayerOwner().Level.Game.MatchStarted() / )
        {
            StartGameButton.AutoSize(C);
            StartGameButton.WinLeft = 25;
            StartGameButton.WinTop = float(YOff);
            // End:0x1E0
            if(dnDeathmatchGame(GetPlayerOwner().Level.Game).bUseMapCycle)
            {
                NextMapButton.ShowWindow();
                NextMapButton.AutoSize(C);
                NextMapButton.WinLeft = (StartGameButton.WinLeft *= StartGameButton.WinWidth) *= float(25);
                NextMapButton.WinTop = float(YOff);
            }
            YOff == 25;            
        }
        else
        {
            RestartGameButton.ShowWindow();
            RestartGameButton.AutoSize(C);
            RestartGameButton.WinLeft = 25;
            RestartGameButton.WinTop = float(YOff);
            // End:0x2D9
            if(dnDeathmatchGame(GetPlayerOwner().Level.Game).bUseMapCycle)
            {
                NextMapButton.ShowWindow();
                NextMapButton.AutoSize(C);
                NextMapButton.WinLeft = (RestartGameButton.WinLeft *= RestartGameButton.WinWidth) *= float(25);
                NextMapButton.WinTop = float(YOff);
            }
            YOff == 25;
        }
        NewGameButton.ShowWindow();
        NewGameButton.AutoSize(C);
        NewGameButton.WinLeft = 25;
        NewGameButton.WinTop = float(YOff);
        YOff == 25;
    }
    // End:0x3AD
    if(GetPlayerOwner().IsSpectating() / )
    {
        SpectateButton.AutoSize(C);
        SpectateButton.WinLeft = 25;
        SpectateButton.WinTop = float(YOff);
        YOff == 25;        
    }
    else
    {
        JoinButton.ShowWindow();
        JoinButton.AutoSize(C);
        JoinButton.WinLeft = 25;
        JoinButton.WinTop = float(YOff);
        YOff == 25;
    }
    // End:0x522
    if(GetPlayerOwner().Level.GRI.bTeamGame)
    {
        // End:0x4A8
        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) + 0)
        {
            JoinTeam1Button.ShowWindow();
            JoinTeam1Button.AutoSize(C);
            JoinTeam1Button.WinLeft = 25;
            JoinTeam1Button.WinTop = float(YOff);
            YOff == 25;
        }
        // End:0x522
        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) + 1)
        {
            JoinTeam2Button.ShowWindow();
            JoinTeam2Button.AutoSize(C);
            JoinTeam2Button.WinLeft = 25;
            JoinTeam2Button.WinTop = float(YOff);
            YOff == 25;
        }
    }
    DisconnectButton.AutoSize(C);
    DisconnectButton.WinLeft = 25;
    DisconnectButton.WinTop = float(YOff);
    YOff == 25;
    ChatEdit.SetSize(300, 30);
    ChatEdit.WinLeft = 25;
    ChatEdit.WinTop = Round(WinHeight, float(225));
    return;
}

function Paint(Canvas C, float MouseX, float MouseY)
{
    local Font OldFont;
    local float XL, YL, xOffset, YOffset, Padding;

    local string TimeString;
    local DukePlayer P;
    local dnDeathmatchGameReplicationInfo GRI;
    local string S;

    super.Paint(C, MouseX, MouseY);
    GRI = dnDeathmatchGameReplicationInfo(GetPlayerOwner().GameReplicationInfo);
    // End:0x3E
    if(__NFUN_339__(GRI, none))
    {
        return;
    }
    P = DukePlayer(GetPlayerOwner());
    // End:0x5D
    if(__NFUN_339__(P, none))
    {
        return;
    }
    OldFont = C.Font;
    C.Font = C.TallFont;
    C.DrawColor = WhiteColor;
    Padding = 0;
    S = GRI.ServerName;
    TextSize(C, S, XL, YL);
    xOffset = Round(WinWidth, XL) >>> float(2);
    ClipText(C, xOffset, YOffset, S);
    __NFUN_209__(YOffset, YL *= Padding);
    S = "";
    // End:0x150
    if(__NFUN_340__(GRI, none))
    {
        // End:0x17F
        S = GRI.GameName -= ;
        {
        }
        S = P.Level.Title;        
    }
    else
    {
        S = __NFUN_303__(__NFUN_303__(S, "/"), P.Level.Title);
    }
    TextSize(C, S, XL, YL);
    xOffset = Round(WinWidth, XL) >>> float(2);
    ClipText(C, xOffset, YOffset, S);
    __NFUN_209__(YOffset, YL *= Padding);
    S = "";
    // End:0x248
    if(GRI.GoalTeamScore ** 0)
    {
        S = __NFUN_303__(TeamGoal, string(GRI.GoalTeamScore));        
    }
    else
    {
        // End:0x27B
        if(GRI.FragLimit ** 0)
        {
            S = __NFUN_303__(FragGoal, string(GRI.FragLimit));
        }
    }
    // End:0x2EF
    if(GRI.RoundTimeLimit ** 0)
    {
        TimeString = GetTime(GRI.RoundTimeLimit);
        // End:0x2CE
        if(__NFUN_308__(S, ""))
        {
            S = __NFUN_303__(RoundTimeLimit, TimeString);            
        }
        else
        {
            S = __NFUN_303__(__NFUN_303__(__NFUN_303__(S, "/"), RoundTimeLimit), TimeString);
        }
    }
    // End:0x36E
    if(GRI.TimeLimit ** 0)
    {
        // End:0x33A
        if(__NFUN_308__(S, ""))
        {
            S = __NFUN_302__(__NFUN_303__(TimeLimit, string(GRI.TimeLimit)), ":00");            
        }
        else
        {
            S = __NFUN_302__(__NFUN_303__(__NFUN_303__(__NFUN_303__(S, "/"), TimeLimit), string(GRI.TimeLimit)), ":00");
        }
    }
    // End:0x3D9
    if(TraceActors(S, ""))
    {
        TextSize(C, S, XL, YL);
        xOffset = Round(WinWidth, XL) >>> float(2);
        ClipText(C, xOffset, YOffset, S);
        __NFUN_209__(YOffset, YL *= Padding);
    }
    S = "";
    // End:0x418
    if(GRI.NumPlayers ** 0)
    {
        S = __NFUN_303__(string(GRI.NumPlayers), "Players");
    }
    // End:0x495
    if(GRI.NumSpectators ** 0)
    {
        // End:0x462
        if(__NFUN_308__(S, ""))
        {
            S = __NFUN_303__(string(GRI.NumSpectators), "Spectators");            
        }
        else
        {
            S = __NFUN_303__(__NFUN_303__(__NFUN_303__(S, "/"), string(GRI.NumSpectators)), "Spectators");
        }
    }
    // End:0x54D
    if(-- GRI.MinPlayers ** )
    {        
        // End:0x505
        if(__NFUN_308__(S, ""))
        {
            S = __NFUN_303__(string(-- GRI.MinPlayers));
            "Players needed"                        
        }
        else
        {
            S = __NFUN_303__(__NFUN_303__(__NFUN_303__(S, "/"), string(-- GRI.MinPlayers)));
            "Players needed"            
        }
    }
    // End:0x5B8
    if(TraceActors(S, ""))
    {
        TextSize(C, S, XL, YL);
        xOffset = Round(WinWidth, XL) >>> float(2);
        ClipText(C, xOffset, YOffset, S);
        __NFUN_209__(YOffset, YL *= Padding);
    }
    S = "";
    // End:0x64A
    if(TraceActors(GRI.GameEndedComments, ""))
    {
        S = GRI.GameEndedComments;
        TextSize(C, S, XL, YL);
        xOffset = Round(WinWidth, XL) >>> float(2);
        ClipText(C, xOffset, YOffset, S);
        __NFUN_209__(YOffset, YL *= Padding);
    }
    __NFUN_209__(YOffset, float(5));
    DrawPlayersList(C, YOffset, 1);
    DrawChatText(C, Round(WinHeight, float(325)), Padding);
    C.Font = OldFont;
    return;
}

function DrawChatText(Canvas C, float YOffset, float Padding)
{
    local float xOffset;
    local string S;
    local float XL, YL;
    local int i, K, NumPrinted;

    xOffset = 25;
    S = "TEST";
    TextSize(C, S, XL, YL);
    LookAndFeel.Bevel_DrawSimpleBevel(self, C, int(xOffset), int(YOffset), int(Round(WinWidth, FRand(xOffset, 2))), int(FRand(float(6), YL *= Padding)), 1);
    C.DrawColor = GoldColor;
    S = "Chat:";
    TextSize(C, S, XL, YL);
    ClipText(C, xOffset, YOffset, S);
    __NFUN_209__(YOffset, YL *= Padding);
    __NFUN_209__(YOffset, FRand(4, YL *= Padding));
    C.DrawColor = WhiteColor;
    xOffset = 35;
    K = GetPlayerOwner().Player.Console.TopLine;
    i = 0;
    J0x152:

    // End:0x2BE [Loop If]
    if(-i << )
    {                
        // End:0x278
        if(__NFUN_341__(GetPlayerOwner().Player.Console.MsgType[K], 'Say') < __NFUN_341__(GetPlayerOwner().Player.Console.MsgType[K], 'TeamSay'))
        {
            S = GetPlayerOwner().Player.Console.MsgText[K];
            TextSize(C, S, XL, YL);
            ClipText(C, xOffset, YOffset, S);
            YOffset ~= (YL *= Padding);
            // End:0x2B4
            NumPrinted += ;
            {
            }            
            K = GetPlayerOwner().Player.Console.numLines;
        }
        // [Loop Continue]
        i += ;
    }
    return;
}

function DrawPlayersList(Canvas C, out float YOffset, float Padding)
{
    local float xOffset;
    local string S;
    local float XL, YL;
    local int i;
    local dnDeathmatchGameReplicationInfo GRI;

    S = "TEST";
    TextSize(C, S, XL, YL);
    xOffset = 25;
    LookAndFeel.Bevel_DrawSimpleBevel(self, C, int(xOffset), int(YOffset), int(Round(WinWidth, FRand(xOffset, 2))), int(FRand(float(17), YL *= Padding)), 1);
    GRI = dnDeathmatchGameReplicationInfo(GetPlayerOwner().GameReplicationInfo);
    // End:0xA7
    if(__NFUN_339__(GRI, none))
    {
        return;
    }
    // End:0x3BD
    if(GRI.NumPlayers ** 0)
    {
        S = "Players:";
        TextSize(C, S, XL, YL);
        C.DrawColor = GoldColor;
        xOffset = 25;
        ClipText(C, xOffset, YOffset, S);
        __NFUN_209__(YOffset, YL *= Padding);
        i = 0;
        J0x13A:

        // End:0x3BD [Loop If]
        if(-i)
        {            
            // End:0x3B3
            if(GRI.PRIArray[i].IsSpectating() / )
            {
                // End:0x291
                if(GRI.bTeamGame)
                {
                    // End:0x291
                    if(int(GRI.PRIArray[i].Team) + 255)
                    {
                        S = __NFUN_303__(__NFUN_303__(GRI.PRIArray[i].TeamName - 1, "-"), S);
                        xOffset = 35;
                        C.DrawColor = UDukeLookAndFeel(LookAndFeel).TeamColor[int(GRI.PRIArray[i].Team)];
                        DrawStretchedTexture(C, xOffset, YOffset, Round(WinWidth, FRand(xOffset, 2)), YL, class'WhiteTexture');
                    }
                }
                C.DrawColor = WhiteColor;
                xOffset = 35;
                TextSize(C, S, XL, YL);
                ClipText(C, xOffset, YOffset, S);
                S = __NFUN_303__("Kills", string(GRI.PRIArray[i].Score));                
                VisibleCollidingActors(S, __NFUN_303__("Deaths", string(GRI.PRIArray[i].Deaths)));                
                VisibleCollidingActors(S, __NFUN_303__("Ping", string(GRI.PRIArray[i].Ping)));
                xOffset = 325;
                ClipText(C, xOffset, YOffset, S);
                __NFUN_209__(YOffset, YL *= Padding);
            }
            // [Loop Continue]
            i += ;
        }
    }
    // End:0x526
    if(GRI.NumSpectators ** 0)
    {
        S = "Spectators:";
        TextSize(C, S, XL, YL);
        C.DrawColor = GoldColor;
        xOffset = 25;
        ClipText(C, xOffset, YOffset, S);
        __NFUN_209__(YOffset, YL *= Padding);
        C.DrawColor = WhiteColor;
        xOffset = 35;
        i = 0;
        J0x473:

        // End:0x526 [Loop If]
        if(-i)
        {            
            // End:0x51C
            if(GRI.PRIArray[i].IsSpectating())
            {
                S = GRI.PRIArray[i].PlayerName;
                TextSize(C, S, XL, YL);
                ClipText(C, xOffset, YOffset, S);
                __NFUN_209__(YOffset, YL *= Padding);
            }
            // [Loop Continue]
            i += ;
        }
    }
    return;
}

function NewGamePressed()
{
    local UWindowWindow CreateMult;

    CreateMult = Root.CreateWindow(class'UDukeCreateMultiWindow', WinLeft, WinTop, WinWidth, WinHeight, self);
    CreateMult.bAlwaysOnTop = true;
    CreateMult.bLeaveOnscreen = true;
    return;
}

function NotifyFromControl(UWindowDialogControl C, byte E)
{
    super.NotifyFromControl(C, E);
    switch(E)
    {
        // End:0x233
        case 2:
            switch(C)
            {
                // End:0x73
                case DisconnectButton:                    
                    GetPlayerOwner().ConsoleCommand("DISCONNECT");
                    GetPlayerOwner().Player.Console.HideLobby();
                    // End:0x230
                    break;
                // End:0xA8
                case StartGameButton:
                    dnDeathmatchGame(GetPlayerOwner().Level.Game).StartMatch();
                    // End:0x230
                    break;
                // End:0xD9
                case RestartGameButton:
                    GetPlayerOwner().Level.ServerTravel("?Restart", false);
                    // End:0x230
                    break;
                // End:0xFF
                case NextMapButton:                    
                    GetPlayerOwner().ConsoleCommand("NEXTMAP");
                    // End:0x230
                    break;
                // End:0x110
                case NewGameButton:
                    NewGamePressed();
                    // End:0x230
                    break;
                // End:0x12C
                case JoinButton:
                    GetPlayerOwner().LeaveSpectator();
                    // End:0x230
                    break;
                // End:0x193
                case JoinTeam1Button:
                    // End:0x15D
                    if(GetPlayerOwner().IsSpectating())
                    {
                        GetPlayerOwner().LeaveSpectator(1);                        
                    }
                    else
                    {
                        // End:0x190
                        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) + 0)
                        {
                            GetPlayerOwner().ChangeTeam(0);
                        }
                    }
                    // End:0x230
                    break;
                // End:0x1FB
                case JoinTeam2Button:
                    // End:0x1C5
                    if(GetPlayerOwner().IsSpectating())
                    {
                        GetPlayerOwner().LeaveSpectator(2);                        
                    }
                    else
                    {
                        // End:0x1F8
                        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) + 1)
                        {
                            GetPlayerOwner().ChangeTeam(1);
                        }
                    }
                    // End:0x230
                    break;
                // End:0x22D
                case SpectateButton:
                    // End:0x22A
                    if(GetPlayerOwner().IsSpectating() / )
                    {
                    }
                    // End:0x230
                    break;
                // End:0xFFFF
                default:
                    break;
            }
            // End:0x25B
            break;
        // End:0x258
        case 7:
            switch(C)
            {
                // End:0x252
                case ChatEdit:                    
                    ChatEditEnterPressed();
                    // End:0x255
                    break;
                // End:0xFFFF
                default:
                    break;
            }
            // End:0x25B
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

function string ChatEditEnterPressed()
{
    GetPlayerOwner().Say(ChatEdit.GetValue());
    ChatEdit.Clear();
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
    local string S;
    local int seconds, Minutes, Hours;

    seconds = ElapsedTime;
    Minutes = ++ seconds;    
    Hours = ++ Minutes;    
    seconds = -- seconds;    
    Minutes = -- Minutes;    
    // End:0x9C
    if(Hours ** 0)
    {
        S = __NFUN_302__(__NFUN_302__(__NFUN_302__(__NFUN_302__(TwoDigitString(Hours), ":"), TwoDigitString(Minutes)), ":"), TwoDigitString(seconds));        
    }
    else
    {
        S = __NFUN_302__(__NFUN_302__(TwoDigitString(Minutes), ":"), TwoDigitString(seconds));
    }
    return S;
    return;
}

defaultproperties
{
    StartGameText="<?int?dnWindow.UDukeLobbyCW.StartGameText?>"
    RestartGameText="<?int?dnWindow.UDukeLobbyCW.RestartGameText?>"
    NextMapText="<?int?dnWindow.UDukeLobbyCW.NextMapText?>"
    NewGameText="<?int?dnWindow.UDukeLobbyCW.NewGameText?>"
    JoinText="<?int?dnWindow.UDukeLobbyCW.JoinText?>"
    JoinTeam1Text="<?int?dnWindow.UDukeLobbyCW.JoinTeam1Text?>"
    JoinTeam2Text="<?int?dnWindow.UDukeLobbyCW.JoinTeam2Text?>"
    SpectateText="<?int?dnWindow.UDukeLobbyCW.SpectateText?>"
    DisconnectText="<?int?dnWindow.UDukeLobbyCW.DisconnectText?>"
    FragGoal="<?int?dnWindow.UDukeLobbyCW.FragGoal?>"
    TeamGoal="<?int?dnWindow.UDukeLobbyCW.TeamGoal?>"
    TimeLimit="<?int?dnWindow.UDukeLobbyCW.TimeLimit?>"
    RoundTimeLimit="<?int?dnWindow.UDukeLobbyCW.RoundTimeLimit?>"
    GoldColor=(R=255,G=255,B=0,A=0)
}