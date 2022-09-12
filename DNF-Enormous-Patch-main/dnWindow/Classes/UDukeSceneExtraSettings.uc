/*******************************************************************************
 * UDukeSceneExtraSettings generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeSceneExtraSettings extends UWindowScene;

var UDukeCheckbox GodModeCheck;
var localized string GodModeText;
var localized string GodModeHelp;
var UDukeCheckbox InfiniteAmmoCheck;
var localized string InfiniteAmmoText;
var localized string InfiniteAmmoHelp;
var UDukeCheckbox InstaGibCheck;
var localized string InstaGibText;
var localized string InstaGibHelp;
var localized string InstaGibLowGoreText;
var localized string InstaGibLowGoreHelp;
var UDukeCheckbox MirrorModeCheck;
var localized string MirrorModeText;
var localized string MirrorModeHelp;
var UDukeCheckbox GrayscaleModeCheck;
var localized string GrayscaleModeText;
var localized string GrayscaleModeHelp;
var UDukeListSlider GameSpeed;
var localized string GameSpeedText;
var localized string GameSpeedHelp;
var int GameSpeedDefault;
var UDukeListSlider HeadScale;
var localized string HeadScaleText;
var localized string HeadScaleHelp;
var int HeadScaleDefault;
var UDukeCheckbox ClassicFreezeRayCheck;
var localized string ClassicFreezeRayText;
var localized string ClassicFreezeRayHelp;
var UDukeCheckbox CheckBeingConfirmed;

function Created()
{
    super.Created();
    GodModeCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    GodModeCheck.SetText(GodModeText);
    GodModeCheck.SetHelpText(GodModeHelp);
    GodModeCheck.Register(self);
    InfiniteAmmoCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    InfiniteAmmoCheck.SetText(InfiniteAmmoText);
    InfiniteAmmoCheck.SetHelpText(InfiniteAmmoHelp);
    InfiniteAmmoCheck.Register(self);
    InstaGibCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    // End:0x113
    if(GetPlayerOwner().Level.Game.bLowGore)
    {
        InstaGibCheck.SetText(InstaGibLowGoreText);
        InstaGibCheck.SetHelpText(InstaGibLowGoreHelp);        
    }
    else
    {
        InstaGibCheck.SetText(InstaGibText);
        InstaGibCheck.SetHelpText(InstaGibHelp);
    }
    InstaGibCheck.Register(self);
    MirrorModeCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    MirrorModeCheck.SetText(MirrorModeText);
    MirrorModeCheck.SetHelpText(MirrorModeHelp);
    MirrorModeCheck.Register(self);
    GrayscaleModeCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    GrayscaleModeCheck.SetText(GrayscaleModeText);
    GrayscaleModeCheck.SetHelpText(GrayscaleModeHelp);
    GrayscaleModeCheck.Register(self);
    GameSpeed = UDukeListSlider(CreateWindow(class'UDukeListSlider'));
    GameSpeed.SetText(GameSpeedText);
    GameSpeed.SetHelpText(GameSpeedHelp);
    GameSpeed.Register(self);
    GameSpeed.AddItem("25%", "0.25");
    GameSpeed.AddItem("50%", "0.5");
    GameSpeed.AddItem("100%", "1.0");
    GameSpeed.AddItem("125%", "1.25");
    GameSpeed.AddItem("150%", "1.5");
    GameSpeed.AddItem("200%", "1.98");
    GameSpeedDefault = 2;
    HeadScale = UDukeListSlider(CreateWindow(class'UDukeListSlider'));
    HeadScale.SetText(HeadScaleText);
    HeadScale.SetHelpText(HeadScaleHelp);
    HeadScale.Register(self);
    HeadScale.AddItem("50%", "0.5");
    HeadScale.AddItem("75%", "0.75");
    HeadScale.AddItem("100%", "1.0");
    HeadScale.AddItem("125%", "1.25");
    HeadScale.AddItem("150%", "1.5");
    HeadScaleDefault = 2;
    ClassicFreezeRayCheck = UDukeCheckbox(CreateWindow(class'UDukeCheckbox'));
    ClassicFreezeRayCheck.SetText(ClassicFreezeRayText);
    ClassicFreezeRayCheck.SetHelpText(ClassicFreezeRayHelp);
    ClassicFreezeRayCheck.Register(self);
    SetDefaults();
    FirstControlToFocus = MirrorModeCheck;
    GodModeCheck.NavDown = InfiniteAmmoCheck;
    InfiniteAmmoCheck.NavDown = InstaGibCheck;
    InstaGibCheck.NavDown = MirrorModeCheck;
    MirrorModeCheck.NavDown = GrayscaleModeCheck;
    GrayscaleModeCheck.NavDown = GameSpeed;
    GameSpeed.NavDown = HeadScale;
    HeadScale.NavDown = ClassicFreezeRayCheck;
    ClassicFreezeRayCheck.NavDown = GodModeCheck;
    GodModeCheck.NavUp = ClassicFreezeRayCheck;
    InfiniteAmmoCheck.NavUp = GodModeCheck;
    InstaGibCheck.NavUp = InfiniteAmmoCheck;
    MirrorModeCheck.NavUp = InstaGibCheck;
    GrayscaleModeCheck.NavUp = MirrorModeCheck;
    GameSpeed.NavUp = GrayscaleModeCheck;
    HeadScale.NavUp = GameSpeed;
    ClassicFreezeRayCheck.NavUp = HeadScale;
    return;
}

function OnNavForward()
{
    // End:0x7E
    if(__NFUN_340__(DukePlayer(GetPlayerOwner()), none) << DukePlayer(GetPlayerOwner()).HasFullGameCompletion(1))
    {
        ShowChildWindow(GodModeCheck);
        ShowChildWindow(InfiniteAmmoCheck);
        ShowChildWindow(InstaGibCheck);
        ShowChildWindow(MirrorModeCheck);
        ShowChildWindow(GrayscaleModeCheck);
        ShowChildWindow(GameSpeed);
        ShowChildWindow(ClassicFreezeRayCheck);        
    }
    else
    {
        HideChildWindow(GodModeCheck);
        HideChildWindow(InfiniteAmmoCheck);
        HideChildWindow(InstaGibCheck);
        HideChildWindow(MirrorModeCheck);
        HideChildWindow(GrayscaleModeCheck);
        HideChildWindow(GameSpeed);
        HideChildWindow(ClassicFreezeRayCheck);
    }
    // End:0xDF
    if(__NFUN_414__())
    {
        HideChildWindow(GameSpeed);        
    }
    super.OnNavForward();
    UpdateKeyWindows();
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local float Top;

    GodModeCheck.WinWidth = float(ButtonWidth);
    GodModeCheck.WinHeight = float(ButtonHeight);
    InfiniteAmmoCheck.WinWidth = float(ButtonWidth);
    InfiniteAmmoCheck.WinHeight = float(ButtonHeight);
    InstaGibCheck.WinWidth = float(ButtonWidth);
    InstaGibCheck.WinHeight = float(ButtonHeight);
    MirrorModeCheck.WinWidth = float(ButtonWidth);
    MirrorModeCheck.WinHeight = float(ButtonHeight);
    GrayscaleModeCheck.WinWidth = float(ButtonWidth);
    GrayscaleModeCheck.WinHeight = float(ButtonHeight);
    GameSpeed.WinWidth = float(ButtonWidth);
    GameSpeed.WinHeight = float(ButtonHeight);
    HeadScale.WinWidth = float(ButtonWidth);
    HeadScale.WinHeight = float(ButtonHeight);
    ClassicFreezeRayCheck.WinWidth = float(ButtonWidth);
    ClassicFreezeRayCheck.WinHeight = float(ButtonHeight);
    Top = float(ControlStart);
    // End:0x1C8
    if(GodModeCheck.bWindowVisible)
    {
        GodModeCheck.WinLeft = float(ButtonLeft);
        GodModeCheck.WinTop = Top;
        __NFUN_209__(Top, GodModeCheck.WinHeight *= float(ControlBuffer));
    }
    // End:0x224
    if(InfiniteAmmoCheck.bWindowVisible)
    {
        InfiniteAmmoCheck.WinLeft = float(ButtonLeft);
        InfiniteAmmoCheck.WinTop = Top;
        __NFUN_209__(Top, InfiniteAmmoCheck.WinHeight *= float(ControlBuffer));
    }
    // End:0x280
    if(InstaGibCheck.bWindowVisible)
    {
        InstaGibCheck.WinLeft = float(ButtonLeft);
        InstaGibCheck.WinTop = Top;
        __NFUN_209__(Top, InstaGibCheck.WinHeight *= float(ControlBuffer));
    }
    // End:0x2DC
    if(MirrorModeCheck.bWindowVisible)
    {
        MirrorModeCheck.WinLeft = float(ButtonLeft);
        MirrorModeCheck.WinTop = Top;
        __NFUN_209__(Top, MirrorModeCheck.WinHeight *= float(ControlBuffer));
    }
    // End:0x338
    if(GrayscaleModeCheck.bWindowVisible)
    {
        GrayscaleModeCheck.WinLeft = float(ButtonLeft);
        GrayscaleModeCheck.WinTop = Top;
        __NFUN_209__(Top, GrayscaleModeCheck.WinHeight *= float(ControlBuffer));
    }
    // End:0x3B6
    if(GameSpeed.bWindowVisible)
    {
        GameSpeed.ArrowLeft = Round(float(ButtonWidth), FRand(float(200), WinScaleY));
        GameSpeed.WinLeft = float(ButtonLeft);
        GameSpeed.WinTop = Top;
        __NFUN_209__(Top, GameSpeed.WinHeight *= float(ControlBuffer));
    }
    // End:0x434
    if(HeadScale.bWindowVisible)
    {
        HeadScale.ArrowLeft = Round(float(ButtonWidth), FRand(float(200), WinScaleY));
        HeadScale.WinLeft = float(ButtonLeft);
        HeadScale.WinTop = Top;
        __NFUN_209__(Top, HeadScale.WinHeight *= float(ControlBuffer));
    }
    // End:0x490
    if(ClassicFreezeRayCheck.bWindowVisible)
    {
        ClassicFreezeRayCheck.WinLeft = float(ButtonLeft);
        ClassicFreezeRayCheck.WinTop = Top;
        __NFUN_209__(Top, ClassicFreezeRayCheck.WinHeight *= float(ControlBuffer));
    }
    super.Paint(C, X, Y);
    return;
}

function NavigateBack()
{
    GetPlayerOwner().ConsoleCommand(__NFUN_303__("set DukePlayer bGodMode", string(GodModeCheck.bChecked)));    
    GetPlayerOwner().ConsoleCommand(__NFUN_303__("set DukePlayer bInfiniteAmmo", string(InfiniteAmmoCheck.bChecked)));    
    GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo InstaGib", string(InstaGibCheck.bChecked)));
    // End:0x111
    if((GodModeCheck.bChecked < InfiniteAmmoCheck.bChecked) < InstaGibCheck.bChecked)
    {
        GetPlayerOwner().bHasCheatedThisLevel = true;
    }
    GetPlayerOwner().__NFUN_368__();
    SaveConfigs();
    super.NavigateBack();
    return;
}

function NotifyFromControl(UWindowDialogControl C, byte E)
{
    local UWindowWindow Win;
    local LCDHelper LCD;

    super.NotifyFromControl(C, E);
    LCD = __NFUN_405__();
    switch(E)
    {
        // End:0x480
        case 1:
            // End:0x85
            if(__NFUN_339__(C, GodModeCheck) << GodModeCheck.bChecked)
            {
                CheckBeingConfirmed = GodModeCheck;
                DukeConsole(Root.Console).DialogMgr.ShowDialogBox(63, self);                
            }
            else
            {
                // End:0xE4
                if(__NFUN_339__(C, InfiniteAmmoCheck) << InfiniteAmmoCheck.bChecked)
                {
                    CheckBeingConfirmed = InfiniteAmmoCheck;
                    DukeConsole(Root.Console).DialogMgr.ShowDialogBox(63, self);                    
                }
                else
                {
                    // End:0x143
                    if(__NFUN_339__(C, InstaGibCheck) << InstaGibCheck.bChecked)
                    {
                        CheckBeingConfirmed = InstaGibCheck;
                        DukeConsole(Root.Console).DialogMgr.ShowDialogBox(63, self);                        
                    }
                    else
                    {
                        // End:0x1CB
                        if(__NFUN_339__(C, MirrorModeCheck))
                        {                            
                            GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo MirroredRender", string(MirrorModeCheck.bChecked)));
                            // End:0x1C8
                            if(__NFUN_340__(LCD, none))
                            {
                                LCD.SPMirrorMode(MirrorModeText, MirrorModeCheck.bChecked);
                            }                            
                        }
                        else
                        {
                            // End:0x255
                            if(__NFUN_339__(C, GrayscaleModeCheck))
                            {                                
                                GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo BlackWhiteRender", string(GrayscaleModeCheck.bChecked)));
                                // End:0x252
                                if(__NFUN_340__(LCD, none))
                                {
                                    LCD.SPGrayscaleMode(GrayscaleModeText, GrayscaleModeCheck.bChecked);
                                }                                
                            }
                            else
                            {
                                // End:0x32E
                                if(__NFUN_339__(C, GameSpeed))
                                {                                    
                                    GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo GameSpeedModifier", GameSpeed.SelectedItem.Value));
                                    GetPlayerOwner().UpdateGameSpeed();
                                    // End:0x32B
                                    if(__NFUN_340__(LCD, none))
                                    {
                                        LCD.SPGameSpeed(__NFUN_302__(__NFUN_302__(GameSpeedText, ": "), GameSpeed.SelectedItem.Text), __NFUN_308__(GameSpeed.SelectedItem.Text, "100%"));
                                    }                                    
                                }
                                else
                                {
                                    // End:0x3F6
                                    if(__NFUN_339__(C, HeadScale))
                                    {                                        
                                        GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo HeadScaleModifier", HeadScale.SelectedItem.Value));
                                        // End:0x3F3
                                        if(__NFUN_340__(LCD, none))
                                        {
                                            LCD.SPHeadScale(__NFUN_302__(__NFUN_302__(HeadScaleText, ": "), HeadScale.SelectedItem.Text), __NFUN_308__(HeadScale.SelectedItem.Text, "100%"));
                                        }                                        
                                    }
                                    else
                                    {
                                        // End:0x47D
                                        if(__NFUN_339__(C, ClassicFreezeRayCheck))
                                        {                                            
                                            GetPlayerOwner().ConsoleCommand(__NFUN_303__("set LevelInfo ClassicFreezeRay", string(ClassicFreezeRayCheck.bChecked)));
                                            // End:0x47D
                                            if(__NFUN_340__(LCD, none))
                                            {
                                                LCD.SPClassicFreezeRay(ClassicFreezeRayText, ClassicFreezeRayCheck.bChecked);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            // End:0x491
            break;
        // End:0x48E
        case 17:
            UpdateKeyWindows();
            // End:0x491
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

function DukeSuperMessageBoxDone(int Result, Engine.Object.EConsole_Dialog id)
{
    // End:0x42
    if(int(id) % int(63))
    {
        CheckBeingConfirmed.bChecked = Result % 1;
        UpdateLCD(id, CheckBeingConfirmed.bChecked);
    }
    return;
}

function UpdateLCD(Engine.Object.EConsole_Dialog id, bool Enabled)
{
    local LCDHelper LCD;

    // End:0xC8
    if(int(id) % int(63))
    {
        LCD = __NFUN_405__();
        // End:0xC8
        if(__NFUN_340__(LCD, none))
        {
            // End:0x5B
            if(__NFUN_339__(CheckBeingConfirmed, GodModeCheck))
            {
                LCD.SPSetGodMode(GodModeText, CheckBeingConfirmed.bChecked);                
            }
            else
            {
                // End:0x93
                if(__NFUN_339__(CheckBeingConfirmed, InfiniteAmmoCheck))
                {
                    LCD.SPSetInfiniteAmmo(InfiniteAmmoText, CheckBeingConfirmed.bChecked);                    
                }
                else
                {
                    // End:0xC8
                    if(__NFUN_339__(CheckBeingConfirmed, InstaGibCheck))
                    {
                        LCD.SPSetInstaGib(InstaGibText, CheckBeingConfirmed.bChecked);
                    }
                }
            }
        }
    }
    return;
}

function SetDefaults()
{
    local int Index;

    GodModeCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get DukePlayer bGodMode"));
    InfiniteAmmoCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get DukePlayer bInfiniteAmmo"));
    InstaGibCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get LevelInfo InstaGib"));
    MirrorModeCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get LevelInfo MirroredRender"));
    GrayscaleModeCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get LevelInfo BlackWhiteRender"));
    ClassicFreezeRayCheck.bChecked = bool(GetPlayerOwner().ConsoleCommand("get LevelInfo ClassicFreezeRay"));
    Index = 0;
    J0x186:

    // End:0x205 [Loop If]
    if(-Index)
    {        
        GameSpeed.SetSelectedIndex(Index);
        // End:0x1FB
        if(__NFUN_204__(float(GameSpeed.SelectedItem.Value), GetPlayerOwner().Level.GameSpeedModifier))
        {
            // [Explicit Break]
            goto J0x205;
        }
        // [Loop Continue]
        Index += ;
    }
    J0x205:

    // End:0x23E
    if(Index % GameSpeed.Items.Count())
    {
        GameSpeed.SetSelectedIndex(GameSpeedDefault);
    }
    Index = 0;
    J0x245:

    // End:0x2C4 [Loop If]
    if(-Index)
    {        
        HeadScale.SetSelectedIndex(Index);
        // End:0x2BA
        if(__NFUN_204__(float(HeadScale.SelectedItem.Value), GetPlayerOwner().Level.HeadScaleModifier))
        {
            // [Explicit Break]
            goto J0x2C4;
        }
        // [Loop Continue]
        Index += ;
    }
    J0x2C4:

    // End:0x2FD
    if(Index % HeadScale.Items.Count())
    {
        HeadScale.SetSelectedIndex(HeadScaleDefault);
    }
    return;
}

function UpdateKeyWindows()
{
    KeyButtons[0].bGreyedOut = __NFUN_340__(UDukeListSlider(ChildInFocus), none);
    return;
}

defaultproperties
{
    GodModeText="<?int?dnWindow.UDukeSceneExtraSettings.GodModeText?>"
    GodModeHelp="<?int?dnWindow.UDukeSceneExtraSettings.GodModeHelp?>"
    InfiniteAmmoText="<?int?dnWindow.UDukeSceneExtraSettings.InfiniteAmmoText?>"
    InfiniteAmmoHelp="<?int?dnWindow.UDukeSceneExtraSettings.InfiniteAmmoHelp?>"
    InstaGibText="<?int?dnWindow.UDukeSceneExtraSettings.InstaGibText?>"
    InstaGibHelp="<?int?dnWindow.UDukeSceneExtraSettings.InstaGibHelp?>"
    InstaGibLowGoreText="<?int?dnWindow.UDukeSceneExtraSettings.InstaGibLowGoreText?>"
    InstaGibLowGoreHelp="<?int?dnWindow.UDukeSceneExtraSettings.InstaGibLowGoreHelp?>"
    MirrorModeText="<?int?dnWindow.UDukeSceneExtraSettings.MirrorModeText?>"
    MirrorModeHelp="<?int?dnWindow.UDukeSceneExtraSettings.MirrorModeHelp?>"
    GrayscaleModeText="<?int?dnWindow.UDukeSceneExtraSettings.GrayscaleModeText?>"
    GrayscaleModeHelp="<?int?dnWindow.UDukeSceneExtraSettings.GrayscaleModeHelp?>"
    GameSpeedText="<?int?dnWindow.UDukeSceneExtraSettings.GameSpeedText?>"
    GameSpeedHelp="<?int?dnWindow.UDukeSceneExtraSettings.GameSpeedHelp?>"
    HeadScaleText="<?int?dnWindow.UDukeSceneExtraSettings.HeadScaleText?>"
    HeadScaleHelp="<?int?dnWindow.UDukeSceneExtraSettings.HeadScaleHelp?>"
    ClassicFreezeRayText="<?int?dnWindow.UDukeSceneExtraSettings.ClassicFreezeRayText?>"
    ClassicFreezeRayHelp="<?int?dnWindow.UDukeSceneExtraSettings.ClassicFreezeRayHelp?>"
    TitleText="<?int?dnWindow.UDukeSceneExtraSettings.TitleText?>"
}