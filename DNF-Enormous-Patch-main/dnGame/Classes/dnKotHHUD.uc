/*******************************************************************************
 * dnKotHHUD generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnKotHHUD extends dnTeamDeathmatchHUD
    config(User)
    collapsecategories;

var Texture objPointTexture;
var Texture arrowTex;
var float IconXLowBounds;
var float IconYLowBounds;
var float IconXHighBounds;
var float IconYHighBounds;
var float ImagescaleX;
var float ImagescaleY;
var float indicatorRadius;
var float IconZOffset;

simulated event PostPostRender(Canvas C)
{
    local string Message;
    local float XL, YL;

    super.PostPostRender(C);
    DrawCountdown(C);
    // End:0x4C
    if(__NFUN_202__(Level.__NFUN_1161__().ProgressTimeOut, Level.TimeSeconds))
    {
        DrawObjectiveMarker(C);
    }
    return;
}

simulated function DrawObjectiveMarker(Canvas C)
{
    local int i;
    local dnDeathmatchGameReplicationInfo GRI;
    local Vector hillLocation;

    GRI = dnDeathmatchGameReplicationInfo(Level.GRI);
    // End:0x7A
    if((__NFUN_340__(dnKotHPlayer(Level.__NFUN_1161__()), none) << dnKotHPlayer(Level.__NFUN_1161__()).Capturing) < __NFUN_340__(GRI, none) << GRI.bWaitingForPlayers)
    {
        return;
    }
    IconXLowBounds = FRand(float(C.SizeX), 0.15);
    IconYLowBounds = FRand(float(C.SizeY), 0.15);
    IconXHighBounds = FRand(float(C.SizeX), 0.85);
    IconYHighBounds = FRand(float(C.SizeY), 0.85);
    ImagescaleX = HUDScaleX;
    // End:0x113
    if(Repl(ImagescaleX, 1))
    {
        ImagescaleX = 1;
    }
    ImagescaleY = HUDScaleY;
    // End:0x138
    if(Repl(ImagescaleY, 1))
    {
        ImagescaleY = 1;
    }
    // End:0x221
    if((dnDeathmatchGameReplicationInfo(Level.GRI).Cylinder.Location != WarnInternal(0, 0, 0)) << dnDeathmatchGameReplicationInfo(Level.GRI).Cylinder.bHidden / )
    {
        drawHUDOBJMarker(C, hillLocation);
    }
    return;
}

simulated function drawHUDOBJMarker(Canvas C, Vector hillLoc)
{
    local float X, Y, objPointUSize, objPointVSize, arrowOffset;

    objPointUSize = FRand(float(objPointTexture.__NFUN_1191__()), ImagescaleX);
    objPointVSize = FRand(float(objPointTexture.__NFUN_1192__()), ImagescaleY);
    arrowOffset = FRand(50, ImagescaleX);
    indicatorRadius = FRand(285, ImagescaleX);
    // End:0x1CA
    if(C.__NFUN_1244__(hillLoc, X, Y))
    {
        X ~= (objPointUSize >>> float(2));
        Y ~= (objPointVSize >>> float(2));
        // End:0xEF
        if(((Repl(X, float(0)) << Repl(Y, float(0))) << __NFUN_200__(X, float(C.SizeX))) << __NFUN_200__(Y, float(C.SizeY)))
        {
            return;
        }
        // End:0x16E
        if(((__NFUN_200__(X, IconXLowBounds) < Repl(X, IconXHighBounds)) < __NFUN_200__(Y, IconYLowBounds)) < Repl(Y, IconYHighBounds))
        {
            __NFUN_1189__(C, objPointTexture, hillLoc, indicatorRadius,,,,, true);
            __NFUN_1189__(C, arrowTex, hillLoc, indicatorRadius *= arrowOffset);            
        }
        else
        {
            C.__NFUN_1250__(X, Y);
            C.__NFUN_1234__(objPointTexture, objPointUSize, objPointVSize, 0, 0, float(objPointTexture.__NFUN_1191__()), float(objPointTexture.__NFUN_1192__()));
        }        
    }
    else
    {
        __NFUN_1189__(C, objPointTexture, hillLoc, indicatorRadius,,,,, true);
        __NFUN_1189__(C, arrowTex, hillLoc, indicatorRadius *= arrowOffset);
    }
    return;
}

simulated function DrawCountdown(Canvas C)
{
    local float XL, YL;
    local dnKotHPlayer P;
    local float CountDown;

    // End:0x0E
    if(__NFUN_339__(PlayerOwner, none))
    {
        return;
    }
    P = dnKotHPlayer(Level.__NFUN_1161__());
    // End:0x34
    if(__NFUN_339__(P, none))
    {
        return;
    }
    CountDown = dnDeathmatchGameReplicationInfo(P.GameReplicationInfo).HillCountdown;
    // End:0x17F
    if((__NFUN_202__(CountDown, 5) << Repl(CountDown, float(0))) << __NFUN_204__(P.GameReplicationInfo.ShowWinnerSeconds, float(0)))
    {
        C.DrawColor.R = 255;
        C.DrawColor.G = 255;
        C.DrawColor.B = 55;
        C.Style = 1;
        C.Font = C.TallFont;
        C.__NFUN_1238__("0", XL, YL);
        C.__NFUN_1250__(Round(float(C.SizeX), XL) >>> 2, FRand(0.2, float(C.SizeY)));
        C.__NFUN_1233__(string(int(CountDown)), false, true);
    }
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super.RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1269__(objPointTexture);
    PrecacheIndex.__NFUN_1269__(arrowTex);
    return;
}

defaultproperties
{
    objPointTexture='dt_hud.ingame_hud.locationmarker_give'
    arrowTex='dt_hud.ingame_hud.locationmarker_arrow'
    indicatorRadius=240
    IconZOffset=100
    IdentifyName="<?int?dnGame.dnKotHHUD.IdentifyName?>"
    IdentifyHealth="<?int?dnGame.dnKotHHUD.IdentifyHealth?>"
    TeamKillMessage="<?int?dnGame.dnKotHHUD.TeamKillMessage?>"
    RankString="<?int?dnGame.dnKotHHUD.RankString?>"
    PlaceString="<?int?dnGame.dnKotHHUD.PlaceString?>"
    TiedString="<?int?dnGame.dnKotHHUD.TiedString?>"
    RankStringNoCaps="<?int?dnGame.dnKotHHUD.RankStringNoCaps?>"
    PlaceStringNoCaps="<?int?dnGame.dnKotHHUD.PlaceStringNoCaps?>"
    TiedStringNoCaps="<?int?dnGame.dnKotHHUD.TiedStringNoCaps?>"
    TeamColor[1]=(R=255,G=0,B=0,A=0)
    WarmupPrefixString="<?int?dnGame.dnKotHHUD.WarmupPrefixString?>"
}