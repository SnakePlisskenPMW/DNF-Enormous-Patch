/*******************************************************************************
 * UDukeSceneMultiPlayerPauseMenu generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeSceneMultiPlayerPauseMenu extends UWindowScene;

var UDukeMenuButton InviteButton;
var string InviteText;
var string InviteHelp;
var UDukeMenuButton ResumeButton;
var localized string ResumeText;
var localized string ResumeHelp;
var UDukeMenuButton ChangeTeamButton;
var localized string ChangeTeamText;
var localized string ChangeTeamHelp;
var localized string ChangeTeamHelpGreyedOut;
var UDukeMenuButton ChallengesButton;
var localized string ChallengesText;
var localized string ChallengesHelp;
var UDukeMenuButton HelpOptionsButton;
var localized string HelpOptionsText;
var localized string HelpOptionsHelp;
var UDukeMenuButton QuitButton;
var localized string QuitText;
var localized string QuitHelp;
var localized string InviteFriend;
var localized string InviteParty;
var SSoundInfo SoundCloseMenuInfo;
var bool bResumeFade;
var bool bTeamStyle;
var UDukeMessageBox ChangeTeamBox;
var localized string ChangeTeamConfirmTitle;
var localized string ChangeTeamConfirmText;
var localized string ChangeTeamNoPenaltyConfirmText;

function Created()
{
    local int i;

    super.Created();
    InviteButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    InviteText = __NFUN_356__("UDukeSceneMultiplayer", "InviteText", "dnwindow");
    InviteHelp = __NFUN_356__("UDukeSceneMultiplayer", "InviteTextHelp", "dnwindow");
    InviteButton.SetText(InviteText);
    InviteButton.SetHelpText(InviteHelp);
    InviteButton.Register(self);
    // End:0xF4
    if(__NFUN_402__() / )
    {
    }
    ResumeButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    ResumeButton.SetText(ResumeText);
    ResumeButton.SetHelpText(ResumeHelp);
    ResumeButton.Register(self);
    ChangeTeamButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    ChangeTeamButton.SetText(ChangeTeamText);
    ChangeTeamButton.SetHelpText(ChangeTeamHelp);
    ChangeTeamButton.Register(self);
    ChallengesButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    ChallengesButton.SetText(ChallengesText);
    ChallengesButton.SetHelpText(ChallengesHelp);
    ChallengesButton.Register(self);
    HelpOptionsButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    HelpOptionsButton.SetText(HelpOptionsText);
    HelpOptionsButton.SetHelpText(HelpOptionsHelp);
    HelpOptionsButton.Register(self);
    QuitButton = UDukeMenuButton(CreateWindow(class'UDukeMenuButton', 1, 1, 1, 1, self));
    QuitButton.SetText(QuitText);
    QuitButton.SetHelpText(QuitHelp);
    QuitButton.Register(self);
    FirstControlToFocus = ResumeButton;
    ResumeButton.NavUp = QuitButton;
    InviteButton.NavUp = ResumeButton;
    ChangeTeamButton.NavUp = InviteButton;
    ChallengesButton.NavUp = ChangeTeamButton;
    HelpOptionsButton.NavUp = ChallengesButton;
    QuitButton.NavUp = HelpOptionsButton;
    ResumeButton.NavDown = InviteButton;
    InviteButton.NavDown = ChangeTeamButton;
    ChangeTeamButton.NavDown = ChallengesButton;
    ChallengesButton.NavDown = HelpOptionsButton;
    HelpOptionsButton.NavDown = QuitButton;
    QuitButton.NavDown = ResumeButton;
    // End:0x436
    if(UDukeRootWindow(Root).AgentOnline.IsInParty())
    {
        KeyButtons[3].SetText(InviteParty);        
    }
    else
    {
        KeyButtons[3].SetText(InviteFriend);
    }
    KeyButtons[3].ShowWindow();
    KeyButtons[3].PCInputKey = int(89);
    ChangeTeamBox = UDukeMessageBox(CreateWindow(class'UDukeMessageBox',,,,, self));
    ChangeTeamBox.SetupMessageBox(ChangeTeamConfirmTitle, ChangeTeamConfirmText, class'DukeDialogBoxManager'.default.YesStr, class'DukeDialogBoxManager'.default.NoStr);
    ChangeTeamBox.HideWindow();
    return;
}

function FixCallouts()
{
    // End:0x3D
    if(UDukeRootWindow(Root).AgentOnline.IsInParty())
    {
        KeyButtons[3].SetText(InviteParty);        
    }
    else
    {
        KeyButtons[3].SetText(InviteFriend);
    }
    return;
}

function bool AllowedToChangeTeams()
{

    /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
        
    */
    /*@Error*/;
}

function Paint(Canvas C, float X, float Y)
{
    FixCallouts();
    super.Paint(C, X, Y);
    bTeamStyle = GetPlayerOwner().GameReplicationInfo.bTeamGame;
    // End:0x5B
    if(bTeamStyle / )
    {        
    }
    else
    {
        ChangeTeamButton.ShowWindow();
        // End:0x9C
        if(AllowedToChangeTeams())
        {
            ChangeTeamButton.Ungrey();
            ChangeTeamButton.SetHelpText(ChangeTeamHelp);            
        }
        else
        {
            ChangeTeamButton.GreyOut();
            ChangeTeamButton.SetHelpText(ChangeTeamHelpGreyedOut);
        }
    }
    // End:0xF3
    if(__NFUN_402__())
    {
        InviteButton.WinWidth = float(ButtonWidth);
        InviteButton.WinHeight = float(ButtonHeight);
    }
    ResumeButton.WinWidth = float(ButtonWidth);
    ResumeButton.WinHeight = float(ButtonHeight);
    ChangeTeamButton.WinWidth = float(ButtonWidth);
    ChangeTeamButton.WinHeight = float(ButtonHeight);
    ChallengesButton.WinWidth = float(ButtonWidth);
    ChallengesButton.WinHeight = float(ButtonHeight);
    HelpOptionsButton.WinWidth = float(ButtonWidth);
    HelpOptionsButton.WinHeight = float(ButtonHeight);
    QuitButton.WinWidth = float(ButtonWidth);
    QuitButton.WinHeight = float(ButtonHeight);
    ResumeButton.WinLeft = float(ButtonLeft);
    ResumeButton.WinTop = float(ControlStart);
    // End:0x24F
    if(__NFUN_402__())
    {
        InviteButton.WinLeft = float(ButtonLeft);
        InviteButton.WinTop = (ResumeButton.WinTop *= ResumeButton.WinHeight) *= float(ControlBuffer);
    }
    ChangeTeamButton.WinLeft = float(ButtonLeft);
    // End:0x2A6
    if(__NFUN_402__())
    {
        ChangeTeamButton.WinTop = (InviteButton.WinTop *= InviteButton.WinHeight) *= float(ControlBuffer);        
    }
    else
    {
        ChangeTeamButton.WinTop = (ResumeButton.WinTop *= ResumeButton.WinHeight) *= float(ControlBuffer);
    }
    ChallengesButton.WinLeft = float(ButtonLeft);
    // End:0x338
    if(bTeamStyle)
    {
        ChallengesButton.WinTop = (ChangeTeamButton.WinTop *= ChangeTeamButton.WinHeight) *= float(ControlBuffer);        
    }
    else
    {
        ChallengesButton.WinTop = ChangeTeamButton.WinTop;
    }
    HelpOptionsButton.WinLeft = float(ButtonLeft);
    HelpOptionsButton.WinTop = (ChallengesButton.WinTop *= ChallengesButton.WinHeight) *= float(ControlBuffer);
    QuitButton.WinLeft = float(ButtonLeft);
    QuitButton.WinTop = (HelpOptionsButton.WinTop *= HelpOptionsButton.WinHeight) *= float(ControlBuffer);
    // End:0x40E
    if(__NFUN_402__())
    {
        InviteButton.Alpha = FadeAlpha;
    }
    ResumeButton.Alpha = FadeAlpha;
    ChangeTeamButton.Alpha = FadeAlpha;
    ChallengesButton.Alpha = FadeAlpha;
    HelpOptionsButton.Alpha = FadeAlpha;
    QuitButton.Alpha = FadeAlpha;
    return;
}

function SwitchTeams()
{
    // End:0x6F
    if(__NFUN_340__(class'Engine'.default.NetworkDevice, class'AgentNetDriver'))
    {
        // End:0x55
        if(int(GetPlayerOwner().PlayerReplicationInfo.Team) % 0)
        {
            DukeMultiPlayer(GetPlayerOwner()).DEPRECATED_RequestChangeTeam(1);            
        }
        else
        {
            DukeMultiPlayer(GetPlayerOwner()).DEPRECATED_RequestChangeTeam(0);
        }        
    }
    else
    {
        UDukeRootWindow(Root).AgentOnline.RequestChangeTeam();
    }
    FadeAlpha = 0.02;
    NavigateBack();
    return;
}

function DukeMessageBoxDone(UWindowWindow W, int iResult)
{
    // End:0x23
    if(__NFUN_339__(W, ChangeTeamBox) << iResult ** 0)
    {
        SwitchTeams();
    }
    super(UWindowWindow).DukeMessageBoxDone(W, iResult);
    return;
}

function NotifyFromControl(UWindowDialogControl C, byte E)
{
    local UWindowWindow Win;

    // End:0x0B
    if(bResumeFade)
    {
        return;
    }
    super.NotifyFromControl(C, E);
    // End:0x2C8
    if(int(E) % 2)
    {
        // End:0x41
        if(__NFUN_339__(C, ResumeButton))
        {
            NavigateBack();            
        }
        else
        {
            // End:0x129
            if(__NFUN_339__(C, ChangeTeamButton))
            {
                // End:0x126
                if(AllowedToChangeTeams())
                {
                    // End:0xE3
                    if(DukeMultiPlayer(GetPlayerOwner()).GameReplicationInfo.bWaitingForPlayers < Repl(DukeMultiPlayer(GetPlayerOwner()).GameReplicationInfo.CountDown, 0))
                    {
                        ChangeTeamBox.SetupMessageBox(ChangeTeamConfirmTitle, ChangeTeamNoPenaltyConfirmText, class'DukeDialogBoxManager'.default.YesStr, class'DukeDialogBoxManager'.default.NoStr);                        
                    }
                    else
                    {
                        ChangeTeamBox.SetupMessageBox(ChangeTeamConfirmTitle, ChangeTeamConfirmText, class'DukeDialogBoxManager'.default.YesStr, class'DukeDialogBoxManager'.default.NoStr);
                    }
                    ShowModal(ChangeTeamBox);
                }                
            }
            else
            {
                // End:0x147
                if(__NFUN_339__(C, ChallengesButton))
                {
                    NavigateForward(class'UDukeSceneChallenges');                    
                }
                else
                {
                    // End:0x165
                    if(__NFUN_339__(C, HelpOptionsButton))
                    {
                        NavigateForward(class'UDukeSceneHelpOptions');                        
                    }
                    else
                    {
                        // End:0x296
                        if(__NFUN_339__(C, QuitButton))
                        {
                            GetPlayerOwner().PlaySoundInfo(0, SoundNavigateForwardInfo);
                            // End:0x216
                            if(LossFromQuittingAtThisTime())
                            {
                                // End:0x1E7
                                if(UDukeRootWindow(Root).AgentOnline.IsHost())
                                {
                                    DukeConsole(Root.Console).DialogMgr.ShowDialogBox(22, self);                                    
                                }
                                else
                                {
                                    DukeConsole(Root.Console).DialogMgr.ShowDialogBox(21, self);
                                }                                
                            }
                            else
                            {
                                // End:0x267
                                if(UDukeRootWindow(Root).AgentOnline.IsHost())
                                {
                                    DukeConsole(Root.Console).DialogMgr.ShowDialogBox(20, self);                                    
                                }
                                else
                                {
                                    DukeConsole(Root.Console).DialogMgr.ShowDialogBox(19, self);
                                }
                            }                            
                        }
                        else
                        {
                            // End:0x2C5
                            if(__NFUN_339__(C, InviteButton))
                            {
                                UDukeRootWindow(Root).AgentOnline.CheckInvites();
                            }
                        }
                    }
                }
            }
        }        
    }
    else
    {
        // End:0x31D
        if(int(E) % 21)
        {
            DukeConsole(Root.Console).DialogMgr.ShowWaitingForResponseDialog();
            UDukeRootWindow(Root).AgentOnline.ShowSystemInviteUI();
        }
    }
    return;
}

function bool LossFromQuittingAtThisTime()
{
    // End:0x0F
    if(__NFUN_339__(GetPlayerOwner(), none))
    {
        return false;
    }
    // End:0x27
    if(GetPlayerOwner().IsMP() / )
    {
    }
    // End:0x45
    if(__NFUN_339__(DukeMultiPlayer(GetPlayerOwner()).GameReplicationInfo, none))
    {
        return false;
    }
    // End:0x70
    if(Repl(DukeMultiPlayer(GetPlayerOwner()).GameReplicationInfo.CountDown, 0))
    {
        return false;
    }
    return DukeMultiPlayer(GetPlayerOwner()).GameReplicationInfo.bWaitingForPlayers / ;
}

function WindowEvent(UWindow.UWindowWindow.WinMessage msg, Canvas C, float X, float Y, int Key)
{
    super.WindowEvent(msg, C, X, Y, Key);
    // End:0x93
    if((int(msg) % int(7)) << Key % KeyButtons[3].PCInputKey)
    {
        DukeConsole(Root.Console).DialogMgr.ShowWaitingForResponseDialog();
        UDukeRootWindow(Root).AgentOnline.ShowSystemInviteUI();
    }
    return;
}

function DukeSuperMessageBoxDone(int Result, Engine.Object.EConsole_Dialog id)
{
    local int gametypeID;

    // End:0x195
    if(Result % 1)
    {
        DukeMultiPlayer(GetPlayerOwner()).bQuitGame = true;
        Root.Console.CloseUWindow();
        // End:0xC0
        if(LossFromQuittingAtThisTime())
        {
            gametypeID = DukeMultiPlayer(GetPlayerOwner()).OMPLID;
            __NFUN_380__("Engine.PlayerPawn", "OMPL", gametypeID, "User.ini");
            __NFUN_367__("User.ini");
            OnlineAgent(class'Engine'.static.__NFUN_503__()).SubmitScoreToLeaderboard(0, 0, 0, 0, 1, 0, true);            
        }
        else
        {
            __NFUN_380__("Engine.PlayerPawn", "OMPL", 0, "User.ini");
            __NFUN_367__("User.ini");
            DukeMultiPlayer(GetPlayerOwner()).SaveAll();
        }
        // End:0x177
        if(UDukeRootWindow(Root).AgentOnline.IsInGame())
        {
            DukeConsole(Root.Console).DialogMgr.ShowWaitingForResponseDialog();
            UDukeRootWindow(Root).AgentOnline.LeaveGame();            
        }
        else
        {            
            GetPlayerOwner().ConsoleCommand("DISCONNECT");
        }
    }
    return;
}

function OnNavForward()
{
    super.OnNavForward();
    ChildInFocus = ResumeButton;
    Root.CancelCapture();
    bResumeFade = false;
    FadeAlpha = 0.01;
    FadeAlphaTarget = 1;
    GetPlayerOwner().FireUp();
    GetPlayerOwner().ForceStopAllRumble();
    return;
}

function NavigateBack()
{
    // End:0x0B
    if(bResumeFade)
    {
        return;
    }
    Root.CaptureMouse(self);
    bResumeFade = true;
    GetPlayerOwner().PlaySoundInfo(0, SoundCloseMenuInfo);
    FadeAlphaTarget = 0.01;
    return;
}

function Tick(float Delta)
{
    super.Tick(Delta);
    // End:0x47
    if(bResumeFade << __NFUN_204__(FadeAlpha, 0.01))
    {
        bResumeFade = false;
        Root.Console.CloseUWindow();
    }
    return;
}

defaultproperties
{
    ResumeText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ResumeText?>"
    ResumeHelp="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ResumeHelp?>"
    ChangeTeamText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamText?>"
    ChangeTeamHelp="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamHelp?>"
    ChangeTeamHelpGreyedOut="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamHelpGreyedOut?>"
    ChallengesText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChallengesText?>"
    ChallengesHelp="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChallengesHelp?>"
    HelpOptionsText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.HelpOptionsText?>"
    HelpOptionsHelp="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.HelpOptionsHelp?>"
    QuitText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.QuitText?>"
    QuitHelp="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.QuitHelp?>"
    InviteFriend="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.InviteFriend?>"
    InviteParty="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.InviteParty?>"
    SoundCloseMenuInfo=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=('a_menu.Menu.Menu_Disappear_ST'),SlotPriority=0,VolumePrefab=0,Slots=(0),Volume=0.5,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=true,bNoFilter=true,bNoOcclude=true,bNoAIHear=true,bNoScale=true,bSpoken=false,bPlayThroughListener=false,bNoDoppler=true,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=1,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)
    ChangeTeamConfirmTitle="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamConfirmTitle?>"
    ChangeTeamConfirmText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamConfirmText?>"
    ChangeTeamNoPenaltyConfirmText="<?int?dnWindow.UDukeSceneMultiPlayerPauseMenu.ChangeTeamNoPenaltyConfirmText?>"
    SoundNavigateForwardInfo=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=('a_menu.Menu.Menu_Appear_ST'),SlotPriority=0,VolumePrefab=0,Slots=(0),Volume=0.5,VolumeVariance=0,InnerRadius=0,InnerRadiusVariance=0,Radius=0,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=true,bNoFilter=true,bNoOcclude=true,bNoAIHear=true,bNoScale=true,bSpoken=false,bPlayThroughListener=false,bNoDoppler=true,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=true),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=1,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)
    FadeAlphaSpeed=2
    bFadeAll=true
}