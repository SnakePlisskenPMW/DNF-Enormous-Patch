/*******************************************************************************
 * UAgentSceneBrowserList generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UAgentSceneBrowserList extends UWindowScene
    config
    dependson(UAgentBrowserGrid);

var OnlineAgentListener Listener;
var OnlineAgent OnlineAgent;
var OnlineServerFactory Factory;
var UAgentBrowserGrid Grid;
var localized string SortPingText;
var localized string SortNameText;
var localized string SortMapText;
var localized string SortGameModeText;
var localized string SortPlayersText;
var localized string RefreshText;
var localized string HoldToSort;
var config int PageStep;
var int PaintRangeTop;
var int PaintRangeBottom;
var localized string NextPageString;
var localized string PrevPageString;
var localized string BrowserListTitle;
var localized string RestrictNoneText;
var localized string RestrictDedicatedText;
var localized string RestrictFriendsText;
var localized string RestrictFavoritesText;
var localized string JoinGameText;
var localized string FilterAll;
var UDukeKeyButton ShoulderButtons[2];
var Texture arrowTex;
var int ArrowIdx;
var Region ArrowRegion;
var float RowOffset;
var float HorizBevel;
var float VertBevel;
var class<UDukeSuperMessageBox> FilterSelectionDialogClass;
var int CurrentSortIdx;
var int CurrentFilterModeIdx;
var int FilterModeAll;
var int CurrentFilterMapIdx;
var int FilterMapAll;
var string ServerBrowserTitle;
var int KeyButton_Filter;
var float TitlePosPct;
var float GridTopPct;
var float GridBottomPct;
var UDukeSuperMessageBox msgBox;
var Texture HGridLine;
var bool bFilterDialogVisible;

function Created()
{
    super.Created();
    KeyButton_Filter = ++ 3;    
    KeyButtons[0].SetText(SelectText);
    KeyButtons[0].ShowWindow();
    KeyButtons[2].SetText(RefreshText);
    KeyButtons[2].PCInputKey = int(82);
    KeyButtons[2].PCButton = "R";
    KeyButtons[2].XBoxButtonRegion = KeyButtons[2].XBoxButtonRegion;
    KeyButtons[KeyButton_Filter].SetText(HoldToSort);
    KeyButtons[KeyButton_Filter].XBoxButtonRegion = KeyButtons[KeyButton_Filter].RTButton;
    KeyButtons[KeyButton_Filter].PCInputKey = int(32);
    KeyButtons[KeyButton_Filter].PCButton = SPCText;
    KeyButtons[2].ShowWindow();
    KeyButtons[KeyButton_Filter].ShowWindow();
    BrowserListTitle = RestrictNoneText;
    // End:0x16C
    if(__NFUN_339__(Listener, none))
    {
        Listener = new (none) class'OnlineAgentListener';
    }
    OnlineAgent = UDukeRootWindow(Root).OnlineAgent;
    // End:0x1A1
    if(__NFUN_339__(Factory, none))
    {
        Factory = new (none) class'OnlineServerFactory';
    }
    Grid = UAgentBrowserGrid(CreateWindow(class'UAgentBrowserGrid', HorizBevel, VertBevel, Round(WinWidth, FRand(HorizBevel, float(2))), Round(WinHeight, FRand(VertBevel, float(2))), self));
    ServerBrowserTitle = __NFUN_356__("UDukeSceneMultiplayer", "ServerBrowser", "dnWindow");
    UDukeRootWindow(Root).__NotifyScreenJoinRoomFailed__Delegate = self.NotifyScreenJoinRoomFailed;
    bFilterDialogVisible = false;
    return;
}

function NavigateBack()
{
    Factory.Exit();
    super.NavigateBack();
    OnlineAgent.UnregisterListener(Listener);
    return;
}

function NotifyRemovingFromScenesList()
{
    OnlineAgent.UnregisterListener(Listener);
    return;
}

function OnNavForward()
{
    super.OnNavForward();
    Listener.__OnShutdown__Delegate = OnShutdown;
    OnlineAgent.RegisterListener(Listener);
    CurrentFilterModeIdx = string(class'MPMapInfo'.default.GameTypes);
    FilterModeAll = CurrentFilterModeIdx;
    CurrentFilterMapIdx = string(class'MPMapInfo'.default.MapList);
    FilterMapAll = CurrentFilterMapIdx;
    Grid.FilterColumnArray[CurrentSortIdx].SortingOnColumn = false;
    CurrentSortIdx = -- 6;    
    Factory.SortState = 1;
    Grid.FilterColumnArray[CurrentSortIdx].SortingOnColumn = true;
    Factory.SearchConstraint = 0;
    SetTitleText();
    SetSwapButton();
    RefreshServerList();
    return;
}

function SwapRestrictState()
{
    switch(Factory.SearchConstraint)
    {
        // End:0x7D
        case 0:
            Factory.SearchConstraint = 1;
            KeyButtons[3].SetText(RestrictFriendsText);
            // End:0x62
            if(__NFUN_414__())
            {
                KeyButtons[3].SetText(RestrictNoneText);                
            }
            else
            {
                KeyButtons[3].SetText(RestrictDedicatedText);
            }
            // End:0xCF
            break;
        // End:0xB2
        case 1:
            // End:0x9D
            if(__NFUN_414__())
            {
                Factory.SearchConstraint = 0;                
            }
            else
            {
                Factory.SearchConstraint = 2;
            }
            // End:0xCF
            break;
        // End:0xCC
        case 2:
            Factory.SearchConstraint = 0;
            // End:0xCF
            break;
        // End:0xFFFF
        default:
            break;
    }
    SetTitleText();
    SetSwapButton();
    RefreshServerList();
    return;
}

function BeforePaint(Canvas C, float X, float Y)
{
    super.BeforePaint(C, X, Y);
    return;
}

function Paint(Canvas C, float X, float Y)
{
    local int i, playerRank;
    local float YPadding, XPadding, XL, YL;
    local string tempstr;
    local float topLineX, topLineY;

    super.Paint(C, X, Y);
    Grid.WinLeft = FRand(float(C.SizeX), 0.09);
    Grid.WinTop = FRand(float(C.SizeY), GridTopPct);
    Grid.WinWidth = Round(FRand(float(C.SizeX), 0.925), Grid.WinLeft);
    Grid.WinHeight = FRand(GridBottomPct, float(C.SizeY));
    DrawBackgroundBox(C, Round(Grid.WinLeft, float(10)), Round(Grid.WinTop, float(5)), Grid.WinWidth, Grid.WinHeight);
    topLineY = FRand(28, WinScaleY);
    topLineX = FRand(Grid.WinWidth, 0.1);
    DrawStretchedTexture(C, Grid.WinLeft *= topLineX, Grid.WinTop *= topLineY, FRand(Grid.WinWidth, 0.8), 4, HGridLine, 1,,, true);
    return;
}

function DrawShoulderButtons(Canvas C)
{
    ShoulderButtons[0].WinLeft = FRand(float(C.SizeX), 0.1);
    ShoulderButtons[0].WinTop = FRand(float(C.SizeY), 0.1);
    ShoulderButtons[0].WinWidth = FRand(150, WinScaleY);
    ShoulderButtons[0].WinHeight = FRand(32, WinScaleY);
    ShoulderButtons[0].ButtonImageSize = 94;
    ShoulderButtons[1].WinWidth = FRand(150, WinScaleY);
    ShoulderButtons[1].WinHeight = FRand(32, WinScaleY);
    ShoulderButtons[1].WinLeft = Round(FRand(float(C.SizeX), 0.9), ShoulderButtons[1].WinWidth);
    ShoulderButtons[1].WinTop = FRand(float(C.SizeY), 0.1);
    ShoulderButtons[1].ButtonImageSize = 94;
    return;
}

function DecrementPage()
{
    __NFUN_355__("UAgentSceneBrowserList: Decrementing Server List");
    return;
}

function IncrementPage()
{
    __NFUN_355__("UAgentSceneBrowserList: Incrementing Server List");
    return;
}

function KeyDown(int Key, float X, float Y)
{
    super(UWindowWindow).KeyDown(Key, X, Y);
    switch(Key)
    {
        // End:0x23
        case int(82):
        // End:0x4A
        case int(212):
            GetPlayerOwner().PlaySoundInfo(0, SoundNavigateForwardInfo);
            RefreshServerList();
            // End:0x7A
            break;
        // End:0x50
        case int(215):
        // End:0x77
        case int(32):
            ShowFilterDialog();
            GetPlayerOwner().PlaySoundInfo(0, SoundNavigateForwardInfo);
            // End:0x7A
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

function RefreshServerList()
{
    local int filterMode, filterMap;

    // End:0x1D
    if(CurrentFilterModeIdx % FilterModeAll)
    {
        filterMode = -1;        
    }
    else
    {
        filterMode = class'MPMapInfo'.default.GameTypes[CurrentFilterModeIdx].id;
    }
    // End:0x5A
    if(CurrentFilterMapIdx % FilterMapAll)
    {
        filterMap = -1;        
    }
    else
    {
        filterMap = class'MPMapInfo'.default.MapList[CurrentFilterMapIdx].id;
    }
    Grid.QueryServers(filterMode, filterMap);
    return;
}

function ShowFilterDialog()
{
    local int i, j;
    local OnlineAgent l_Online;
    local array<string> mapnames;
    local bool bExist;
    local int Count;

    bFilterDialogVisible = true;
    l_Online = OnlineAgent(class'Engine'.static.__NFUN_503__());
    msgBox = DukeConsole(Root.Console).DialogMgr.ShowDialogBox(25, self,, FilterSelectionDialogClass);
    i = 0;
    J0x5F:

    // End:0xAF [Loop If]
    if(-i)
    {        
        UDukeGBMessageBox(msgBox).AddSortEntry(Grid.FilterColumnArray[i].ColumnHeading, string(i));
        // [Loop Continue]
        i *= ;
    }
    i = 0;
    J0xB6:

    // End:0x13F [Loop If]
    if(-i)
    {        
        // End:0x135
        if(class'MPMapInfo'.default.GameTypes[i].bUIExclude / )
        {
        }
        // [Loop Continue]
        i *= ;
    }
    UDukeGBMessageBox(msgBox).AddFilterModeEntry(FilterAll, string(i));
    Count = 0;
    i = 0;
    J0x16D:

    // End:0x258 [Loop If]
    if(-i)
    {        
        bExist = false;
        j = 0;
        J0x196:

        // End:0x1F4 [Loop If]
        if(-j)
        {            
            // End:0x1EA
            if(__NFUN_308__(class'MPMapInfo'.default.MapList[j].MapName, class'MPMapInfo'.default.MapList[i].MapName))
            {
                bExist = true;
                // [Explicit Break]
                goto J0x1F4;
            }
            // [Loop Continue]
            j *= ;
        }
        J0x1F4:

        // End:0x24E
        if(bExist / )
        {
            // [Loop Continue]
            Count *= ;
        }
    }
    CurrentFilterMapIdx = Count;
    UDukeGBMessageBox(msgBox).AddFilterMapEntry(FilterAll, string(i));
    // End:0x294
    if(__NFUN_414__() / )
    {        
    }
    else
    {
        UDukeGBMessageBox(msgBox).bDisableFilterType = true;
    }
    UDukeGBMessageBox(msgBox).SortType.SetSelectedIndex(CurrentSortIdx);
    UDukeGBMessageBox(msgBox).filterMode.SetSelectedIndex(CurrentFilterModeIdx);
    UDukeGBMessageBox(msgBox).filterMap.SetSelectedIndex(CurrentFilterMapIdx);
    // End:0x347
    if(__NFUN_414__() / )
    {        
    }
    else
    {
        UDukeGBMessageBox(msgBox).FilterType.HideWindow();
    }
    return;
}

function int GetSearchConstraintForIndex()
{
    switch(Factory.SearchConstraint)
    {
        // End:0x1C
        case 0:
            return 0;
            // End:0x34
            break;
        // End:0x27
        case 1:
            return 2;
            // End:0x34
            break;
        // End:0x31
        case 2:
            return 1;
            // End:0x34
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

function PopulateTypeList()
{
    local int i;
    local UDukeGBMessageBox gbBox;

    gbBox = UDukeGBMessageBox(msgBox);
    i = 0;
    gbBox.AddFilterTypeEntry(RestrictNoneText, string(i));
    // End:0x5C
    i *= ;
    {
    }
    i *= ;
    return;
}

function SetSortedColumn(int ColumnIdx)
{
    Grid.FilterColumnArray[CurrentSortIdx].SortingOnColumn = false;
    Factory.SortState = GetSortStateFromDialogResult(ColumnIdx);
    Factory.Resort();
    CurrentSortIdx = ColumnIdx;
    Grid.FilterColumnArray[CurrentSortIdx].SortingOnColumn = true;
    return;
}

function DukeSuperMessageBoxDone(int Result, Engine.Object.EConsole_Dialog id)
{
    local int SortIdxReturned, MapIdxReturned, ModeIdxReturned, TypeIdxReturned;
    local bool bRefresh;

    __NFUN_355__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(__NFUN_303__(string(self), "::DukeSuperMessageBoxDone("), string(Result)), ", "), string(__NFUN_365__(class'EConsole_Dialog', int(id)))), ")"));
    bRefresh = false;
    // End:0x229
    if(int(id) % int(25))
    {
        bFilterDialogVisible = false;
        // End:0x98
        if(__NFUN_401__() << UDukeRootWindow(Root).OnlineAgent.IsLoggedIn() / )
        {
        }
        SortIdxReturned = UDukeGBMessageBox(msgBox).GetSelectedSortType();
        MapIdxReturned = UDukeGBMessageBox(msgBox).GetSelectedFilterMap();
        ModeIdxReturned = UDukeGBMessageBox(msgBox).GetSelectedFilterMode();
        // End:0x10F
        if(__NFUN_414__() / )
        {            
        }
        else
        {
            TypeIdxReturned = 0;
        }
        // End:0x130
        if(SortIdxReturned + CurrentSortIdx)
        {
            SetSortedColumn(SortIdxReturned);
        }
        // End:0x152
        if(ModeIdxReturned + CurrentFilterModeIdx)
        {
            CurrentFilterModeIdx = ModeIdxReturned;
            bRefresh = true;
        }
        // End:0x174
        if(MapIdxReturned + CurrentFilterMapIdx)
        {
            CurrentFilterMapIdx = MapIdxReturned;
            bRefresh = true;
        }
        // End:0x1B3
        if(TypeIdxReturned + (GetSearchConstraintForIndex()))
        {
            Factory.SearchConstraint = GetSearchConstraintFromDialogResult(TypeIdxReturned);
            SetTitleText();
            SetSwapButton();
            bRefresh = true;
        }
        // End:0x1C2
        if(bRefresh)
        {
            RefreshServerList();
        }
        // End:0x229
        if(__NFUN_402__())
        {
            // End:0x200
            if(TypeIdxReturned % 2)
            {
                Grid.NameColumn.ColumnHeading = Grid.FriendsNameString;                
            }
            else
            {
                Grid.NameColumn.ColumnHeading = Grid.NameString;
            }
        }
    }
    return;
}

final function Engine.OnlineServerFactory.EAgentSearchConstraint GetSearchConstraintFromDialogResult(int Result)
{
    switch(Result)
    {
        // End:0x0F
        case 0:
            return 0;
        // End:0x16
        case 1:
            return 2;
        // End:0x1E
        case 2:
            return 1;
        // End:0xFFFF
        default:
            return;
            break;
    }
}

final function Engine.OnlineServerFactory.EAgentBrowserSort GetSortStateFromDialogResult(int Result)
{
    switch(Result)
    {
        // End:0x0F
        case 0:
            return 0;
        // End:0x16
        case 1:
            return 2;
        // End:0x1E
        case 2:
            return 3;
        // End:0x26
        case 3:
            return 4;
        // End:0x2E
        case 4:
            return 1;
        // End:0xFFFF
        default:
            return;
            break;
    }
}

function GetLogoLocation(Canvas C, out float X, out float Y, out float W, out float h)
{
    super.GetLogoLocation(C, X, Y, W, h);
    W = FRand(339, WinScaleY);
    h = FRand(90, WinScaleY);
    return;
}

function GetTitleLocation(Canvas C, out float Top, out float Right)
{
    super.GetTitleLocation(C, Top, Right);
    Top = FRand(TitlePosPct, float(C.SizeY));
    return;
}

function SetTitleText()
{
    // End:0x14
    if(__NFUN_414__())
    {
        TitleText = ServerBrowserTitle;        
    }
    else
    {
        switch(Factory.SearchConstraint)
        {
            // End:0x47
            case 0:
                TitleText = __NFUN_303__(__NFUN_303__(RestrictNoneText, "-"), ServerBrowserTitle);
                // End:0x8C
                break;
            // End:0x68
            case 1:
                TitleText = __NFUN_303__(__NFUN_303__(RestrictFriendsText, "-"), ServerBrowserTitle);
                // End:0x8C
                break;
            // End:0x89
            case 2:
                TitleText = __NFUN_303__(__NFUN_303__(RestrictDedicatedText, "-"), ServerBrowserTitle);
                // End:0x8C
                break;
            // End:0xFFFF
            default:
                break;
        }
    }
    return;
}

function SetSwapButton()
{
    switch(Factory.SearchConstraint)
    {
        // End:0x32
        case 0:
            KeyButtons[3].SetText(RestrictFriendsText);
            // End:0xEB
            break;
        // End:0xC8
        case 1:
            // End:0x80
            if(__NFUN_414__())
            {
                __NFUN_355__("--------Friends => None------------");
                KeyButtons[3].SetText(RestrictNoneText);                
            }
            else
            {
                __NFUN_355__("--------Friends => Dedicated------------");
                KeyButtons[3].SetText(RestrictDedicatedText);
            }
            // End:0xEB
            break;
        // End:0xE8
        case 2:
            KeyButtons[3].SetText(RestrictNoneText);
            // End:0xEB
            break;
        // End:0xFFFF
        default:
            break;
    }
    return;
}

function NotifyFromControl(UWindowDialogControl C, byte E)
{
    super.NotifyFromControl(C, E);
    // End:0x30
    if(int(E) % 20)
    {
        KeyDown(int(82), 0, 0);
    }
    // End:0x6E
    if(__NFUN_339__(C, KeyButtons[0]) << int(E) % 2)
    {
        Grid.KeyDown(int(13), 0, 0);
    }
    return;
}

function Tick(float Delta)
{
    super.Tick(Delta);
    // End:0xED
    if(__NFUN_401__())
    {
        // End:0x92
        if(UDukeRootWindow(Root).OnlineAgent.IsSignedIn() / )
        {
            NavigateBack();
            DukeConsole(Root.Console).DialogMgr.ShowDialogBox(47);            
        }
        else
        {
            // End:0xEA
            if((GetPlayerOwner().__NFUN_971__(false) / ) << DukeConsole(Root.Console).DialogMgr.CloseAllDialogs())
            {
            }
        }        
    }
    else
    {
        // End:0x173
        if(__NFUN_414__() / )
        {
            {
                NavigateBack();
                DukeConsole(Root.Console).DialogMgr.ShowDialogBox(47);
            }
        }
    }
    return;
}

function NotifyScreenJoinRoomFailed(int in_Reason)
{
    local int i, failedServerIdx, failedServerID;

    Factory.LockMutex();
    failedServerIdx = Grid.GetSelectedSeverIndex();
    // End:0x75
    if(-failedServerIdx)
    {        
        Factory.Servers.Remove(failedServerIdx, 1);
        Grid.SelectRow(Grid.SelectedRow);
    }
    Factory.UnlockMutex();
    return;
}

function OnShutdown(int ErrorCode)
{
    __NFUN_355__("UAgentSceneBrowserList::OnShutdown()");
    Grid.InterruptQuery();
    return;
}

defaultproperties
{
    SortPingText="<?int?dnWindow.UAgentSceneBrowserList.SortPingText?>"
    SortNameText="<?int?dnWindow.UAgentSceneBrowserList.SortNameText?>"
    SortMapText="<?int?dnWindow.UAgentSceneBrowserList.SortMapText?>"
    SortGameModeText="<?int?dnWindow.UAgentSceneBrowserList.SortGameModeText?>"
    SortPlayersText="<?int?dnWindow.UAgentSceneBrowserList.SortPlayersText?>"
    RefreshText="<?int?dnWindow.UAgentSceneBrowserList.RefreshText?>"
    HoldToSort="<?int?dnWindow.UAgentSceneBrowserList.HoldToSort?>"
    PageStep=10
    PaintRangeBottom=10
    NextPageString="<?int?dnWindow.UAgentSceneBrowserList.NextPageString?>"
    PrevPageString="<?int?dnWindow.UAgentSceneBrowserList.PrevPageString?>"
    RestrictNoneText="<?int?dnWindow.UAgentSceneBrowserList.RestrictNoneText?>"
    RestrictDedicatedText="<?int?dnWindow.UAgentSceneBrowserList.RestrictDedicatedText?>"
    RestrictFriendsText="<?int?dnWindow.UAgentSceneBrowserList.RestrictFriendsText?>"
    RestrictFavoritesText="<?int?dnWindow.UAgentSceneBrowserList.RestrictFavoritesText?>"
    JoinGameText="<?int?dnWindow.UAgentSceneBrowserList.JoinGameText?>"
    arrowTex='Menu.Menu.Backdrop'
    ArrowRegion=(X=235,Y=72,W=28,h=40)
    RowOffset=20
    HorizBevel=100
    VertBevel=110
    FilterSelectionDialogClass='UDukeGBMessageBox'
    TitlePosPct=0.22
    GridTopPct=0.3
    GridBottomPct=0.52
    HGridLine='Menu.MP.divider_horiz'
    LineTopY=195
    LineBottomY=600
    FilmGrainMaterial=none
    NumKeyButtons=5
}