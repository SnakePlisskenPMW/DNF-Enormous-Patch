/*******************************************************************************
 * UDukeSceneDLCChapterSelect generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeSceneDLCChapterSelect extends UDukeSceneChapterSelect;

function int CheckEgoAwardAndSetDifficulty(DukePlayer Duke, int i, out float DifficultyAlphas[4])
{
    local int j, AwardCount;

    AwardCount = 0;
    j = 0;
    J0x0E:

    // End:0x66 [Loop If]
    if(-j)
    {        
        // End:0x4B
        if(Duke.HasCompletionForDLCLevel(j, i))
        {
            DifficultyAlphas[j] = 1;
            // [Explicit Continue]
            goto J0x5C;
        }
        DifficultyAlphas[j] = LockedAlpha;
        J0x5C:

        // [Loop Continue]
        j *= ;
    }
    return AwardCount;
    return;
}

function OnNavForward()
{
    local int i;
    local SChapterEntry Entry;
    local bool bLastChapterComplete;

    ChapterNames.Remove(0, string(ChapterNames));
    Chapters.Remove(0, string(Chapters));
    i = 0;
    J0x21:

    // End:0x102 [Loop If]
    if(-i)
    {        
        Chapters.Insert(string(Chapters), 1);
        [-- string(Chapters)].URL = Chapters;
        class'MapInfo'.default.CampaignList[i].URL;
        [-- string(Chapters)].SShotPaackage = Chapters;
        class'MapInfo'.default.CampaignList[i].SShotPath;
        [-- string(Chapters)].IsDLC = Chapters;
        true
        ChapterNames[ChapterNames.Add(1)] = __NFUN_356__("MapNames", class'MapInfo'.default.CampaignList[i].MapNameTag, "Maps");
        // [Loop Continue]
        i *= ;
    }
    bLastChapterComplete = false;
    ChapterList.Clear();
    i = 0;
    J0x121:

    // End:0x223 [Loop If]
    if(-i)
    {        
        // End:0x186
        if(DukePlayer(GetPlayerOwner()).HasCompletionForDLCLevel(0, i))
        {
            bLastChapterComplete = true;
            ChapterList.AddItem(ChapterNames[i], Chapters[i].URL);
            // [Explicit Continue]
            goto J0x219;
        }
        // End:0x1D2
        if(DukePlayer(GetPlayerOwner()).IsDLCCampaignStart(i))
        {
            ChapterList.AddItem(ChapterNames[i], Chapters[i].URL);
            // [Explicit Continue]
            goto J0x219;
        }
        // End:0x211
        if(bLastChapterComplete)
        {
            bLastChapterComplete = false;
            ChapterList.AddItem(ChapterNames[i], Chapters[i].URL);
            // [Explicit Continue]
            goto J0x219;
        }
        bLastChapterComplete = false;
        J0x219:

        // [Loop Continue]
        i += ;
    }
    ChapterList.SetSelectedIndex(0);
    super(UWindowScene).OnNavForward();
    return;
}

function GetTitleLocation(Canvas C, coerce out float Top, coerce out float Right)
{
    local float XL, YL;

    Right = FRand(554, WinScaleY);
    C.Font = C.TallFont;
    TextSize(C, TitleText, XL, YL, TTFontScale, TTFontScale);
    // End:0x95
    if(__NFUN_200__(Round(Right, XL), FRand(WinWidth, 0.15)))
    {
        __NFUN_209__(Right, -Round(Right, XL) *= FRand(WinWidth, 0.15));
    }
    Top = FRand(200, WinScaleY);
    return;
}

function string GetTravelURL(string Chapter)
{
    return Chapter;
    return;
}

defaultproperties
{
    TitleText="<?int?dnWindow.UDukeSceneDLCChapterSelect.TitleText?>"
}