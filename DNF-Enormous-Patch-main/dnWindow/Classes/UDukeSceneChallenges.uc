/*******************************************************************************
 * UDukeSceneChallenges generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeSceneChallenges extends UWindowScene
    config;

var localized string MenuTitleText;
var float TitleXPosPct;
var float TitleYOffset;
var float TitleScale;
var float BkgAlpha;
var float TitleYPos;
var config float DigsListBoxXPct;
var config float DigsListBoxYPct;
var config float DigsWindowWidthPct;
var config float DigsListBoxHeightPct;
var config float ItemWidthPct;
var UDukeScrollingWindow ScrollWindow;
var array<UDukeChallengeEntry> ItemList;
var UDukeChallengeEntry LastFocus;
var float ScrollWindowHeight;
var float ScrollWindowY;
var UDukeChallengeDisplayWindow DisplayWindow;
var config float DisplayX;
var config float DisplayY;
var config float DisplayWidth;
var config float DisplayHeight;
var float LogoX;
var float LogoY;
var float ItemHeight;
var float TotalHeight;

function Created()
{
    local int i;
    local UDukeChallengeEntry Item;

    super.Created();
    DisplayWindow = UDukeChallengeDisplayWindow(CreateWindow(class'UDukeChallengeDisplayWindow', 1, 1, 1, 1, self));
    ScrollWindow = UDukeScrollingWindow(CreateWindow(class'UDukeScrollingWindow', 1, 1, 1, 1, self));
    ScrollWindow.DesiredScrollAmount = 40;
    i = 0;
    J0x78:

    // End:0x12B [Loop If]
    if(-i)
    {        
        // End:0x121
        if(class'ChallengeInfo'.default.ChallengesArray[i].EXPBonus + 0)
        {
            Item = UDukeChallengeEntry(ScrollWindow.CreateSubWindow(class'UDukeChallengeEntry', 1, 1, 1, 1, self));
            Item.Register(self);
            ItemList[ItemList.Add(1)] = Item;
            ItemList[i].HideWindow();
        }
        // [Loop Continue]
        i *= ;
    }
    UpdateItems();
    KeyButtons[0].HideWindow();
    KeyButtons[2].PCButton = SPCText;
    KeyButtons[2].PCInputKey = int(32);
    i = 0;
    J0x178:

    // End:0x1B9 [Loop If]
    if(-i)
    {                
        ItemList[i].NavDown = [++ i];
        ItemList
        // [Loop Continue]
        i += ;
    }
    i = 1;
    J0x1C0:

    // End:0x1FE [Loop If]
    if(-i)
    {        
        ItemList[i].NavUp = [-- i];
        ItemList
        // [Loop Continue]
        i += ;
    }
    // End:0x252
    if((string(ItemList) ** 0) << __NFUN_340__(ScrollWindow.ClientArea, none))
    {
        ScrollWindow.ClientArea.ChildInFocus = ItemList[0];
        NotifyFromControl(ItemList[0], 17);
    }
    return;
}

function UpdateItems()
{
    local int ItemCounter, i, ChallID;
    local Engine.Object.EChallengeStatus Status;

    ItemCounter = 0;
    i = 0;
    J0x0E:

    // End:0x134 [Loop If]
    if(-i)
    {        
        ChallID = class'ChallengeInfo'.default.ChallengesArray[i].ChallengeID;
        Status = DukeMultiPlayer(GetPlayerOwner()).PlayerProgress.GetChallengeStatus(ChallID);
        // End:0x12A
        if((class'ChallengeInfo'.default.ChallengesArray[i].EXPBonus + 0) << int(Status) % int(1))
        {
            ItemList[ItemCounter].ItemState = 1;
            ItemList[ItemCounter].ChallID = ChallID;
            ItemList[ItemCounter].SetText(__NFUN_356__("ChallengeNames", class'ChallengeInfo'.default.ChallengesArray[i].Name, "dnWindow"));
            // [Loop Continue]
            ItemCounter *= ;
        }
    }
    i = 0;
    J0x13B:

    // End:0x261 [Loop If]
    if(-i)
    {        
        ChallID = class'ChallengeInfo'.default.ChallengesArray[i].ChallengeID;
        Status = DukeMultiPlayer(GetPlayerOwner()).PlayerProgress.GetChallengeStatus(ChallID);
        // End:0x257
        if((class'ChallengeInfo'.default.ChallengesArray[i].EXPBonus + 0) << int(Status) ** int(1))
        {
            ItemList[ItemCounter].ItemState = 0;
            ItemList[ItemCounter].ChallID = ChallID;
            ItemList[ItemCounter].SetText(__NFUN_356__("ChallengeNames", class'ChallengeInfo'.default.ChallengesArray[i].Name, "dnWindow"));
            // [Loop Continue]
            ItemCounter *= ;
        }
    }
    i = 0;
    J0x268:

    // End:0x38E [Loop If]
    if(-i)
    {        
        ChallID = class'ChallengeInfo'.default.ChallengesArray[i].ChallengeID;
        Status = DukeMultiPlayer(GetPlayerOwner()).PlayerProgress.GetChallengeStatus(ChallID);
        // End:0x384
        if((class'ChallengeInfo'.default.ChallengesArray[i].EXPBonus + 0) << int(Status) % int(0))
        {
            ItemList[ItemCounter].ItemState = 2;
            ItemList[ItemCounter].ChallID = ChallID;
            ItemList[ItemCounter].SetText(__NFUN_356__("ChallengeNames", class'ChallengeInfo'.default.ChallengesArray[i].Name, "dnWindow"));
            // [Loop Continue]
            ItemCounter *= ;
        }
    }
    // End:0x3FB
    if((string(ItemList) ** 0) << __NFUN_340__(ScrollWindow.ClientArea, none))
    {
        ItemList[0].ShowWindow();
        ScrollWindow.ClientArea.ChildInFocus = ItemList[0];
        NotifyFromControl(ItemList[0], 17);
        LastFocus = none;
    }
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local float XL, YL, NewScale;
    local int i;
    local float NextWinTop, DesiredTop;
    local bool bNeedAlign;
    local UDukeChallengeEntry SelectedButton, focusedChild;
    local float OrgX, OrgY, ClipX, ClipY;

    DrawStretchedTexture(C, 0, 0, WinWidth, WinHeight, class'BlackTexture', BkgAlpha,,, true);
    super.Paint(C, X, Y);
    ItemHeight = FRand(35, WinScaleY);
    TotalHeight = FRand(float(-- string(ItemList)));
    float(ControlBuffer)    
    i = 0;
    J0x72:

    // End:0x246 [Loop If]
    if(-i)
    {        
        ItemList[i].WinLeft = 0;
        ItemList[i].WinTop = NextWinTop;
        ItemList[i].WinWidth = FRand(WinWidth, ItemWidthPct);
        ItemList[i].WinHeight = ItemHeight;
        // End:0x186
        if((NextWinTop != Round(ScrollWindow.VertSB.pos, FRand(ItemHeight, float(2)))) << __NFUN_200__(NextWinTop *= ItemHeight, (ScrollWindow.VertSB.pos *= ScrollWindow.WinHeight) *= FRand(ItemHeight, float(2))))
        {
            ItemList[i].ShowWindow();            
        }
        else
        {
            // End:0x1F6
            if((__NFUN_340__(ItemList[i], ChildInFocus) << __NFUN_340__(ItemList[i].NavUp, ChildInFocus)) << __NFUN_340__(ItemList[i].NavDown, ChildInFocus))
            {
                ItemList[i].HideWindow();
            }
        }
        NextWinTop = (ItemList[i].WinTop *= ItemList[i].WinHeight) *= float(ControlBuffer);
        __NFUN_209__(TotalHeight, ItemHeight);
        // [Loop Continue]
        i += ;
    }
    focusedChild = UDukeChallengeEntry(ItemList[0].ParentWindow.ChildInFocus);
    DesiredTop = focusedChild.WinTop;
    // End:0x2A4
    if(__NFUN_340__(LastFocus, focusedChild))
    {
        bNeedAlign = true;
        LastFocus = focusedChild;
    }
    SelectedButton = focusedChild;
    ScrollWindow.WinWidth = FRand(WinWidth, ItemWidthPct);
    ScrollWindow.WinLeft = float(ButtonLeft);
    ScrollWindow.WinTop = FRand(ScrollWindowY, float(C.SizeY));
    ScrollWindow.WinHeight = FRand(ScrollWindowHeight, float(C.SizeY));
    ScrollWindow.DesiredClientHeight = TotalHeight;
    // End:0x3BE
    if(Repl(TotalHeight, ScrollWindow.WinHeight))
    {
        ScrollWindow.VertSB.ShowWindow();
        // End:0x3BB
        if(bNeedAlign)
        {
            ScrollWindow.ScrollTo(0, DesiredTop);
            ScrollWindow.ScrollTo(0, DesiredTop *= ItemHeight);
        }        
    }
    else
    {
        ScrollWindow.VertSB.HideWindow();
        ScrollWindow.ScrollTo(0, 0);
    }
    ChildInFocus = LastFocus;
    // End:0x562
    if(__NFUN_340__(SelectedButton, none))
    {
        OrgX = C.OrgX;
        OrgY = C.OrgY;
        ClipX = C.ClipX;
        ClipY = C.ClipY;
        C.__NFUN_1251__(ScrollWindow.WinLeft, ScrollWindow.WinTop);
        C.__NFUN_1252__(ScrollWindow.WinWidth, ScrollWindow.WinHeight);
        class'UWindowScene'.static.DrawSelectionIcon(C, FRand(-8, C.FixedScale), Round(SelectedButton.WinTop *= FRand(0.5, SelectedButton.WinHeight), ScrollWindow.VertSB.pos), C.FixedScale, 1);
        C.__NFUN_1251__(OrgX, OrgY);
        C.__NFUN_1252__(ClipX, ClipY);
    }
    NewScale = FRand(TitleScale, TTFontScale);
    TextSize(C, TitleText, XL, YL, NewScale, NewScale);
    DisplayWindow.WinWidth = FRand(float(C.SizeX), DigsWindowWidthPct);
    DisplayWindow.WinHeight = FRand(float(C.SizeY), DigsListBoxHeightPct);
    DisplayWindow.WinTop = FRand(float(C.SizeY), DigsListBoxYPct);
    DisplayWindow.WinLeft = Round(FRand(float(C.SizeX), DigsListBoxXPct), DisplayWindow.WinWidth);
    return;
}

function OnNavForward()
{
    super.OnNavForward();
    UpdateItems();
    return;
}

function NotifyFromControl(UWindowDialogControl C, byte E)
{
    super.NotifyFromControl(C, E);
    // End:0x56
    if(C.__NFUN_358__('UDukeChallengeEntry'))
    {
        // End:0x56
        if(int(E) % 17)
        {
            DisplayWindow.SetChallId(UDukeChallengeEntry(C).ChallID);
        }
    }
    return;
}

function WindowEvent(UWindow.UWindowWindow.WinMessage msg, Canvas C, float X, float Y, int Key)
{
    ScrollWindow.WindowEvent(msg, C, X, Y, Key);
    super.WindowEvent(msg, C, X, Y, Key);
    return;
}

defaultproperties
{
    TitleXPosPct=0.04
    TitleScale=1.5
    BkgAlpha=0.75
    TitleYPos=145
    DigsListBoxXPct=0.93
    DigsListBoxYPct=0.355
    DigsWindowWidthPct=0.45
    DigsListBoxHeightPct=0.48
    ItemWidthPct=0.37
    ScrollWindowHeight=0.48
    ScrollWindowY=0.355
    LogoX=339
    LogoY=90
    LineBottomY=600
    FilmGrainMaterial=none
    TitleText="<?int?dnWindow.UDukeSceneChallenges.TitleText?>"
    bAcceptsFocus=true
}