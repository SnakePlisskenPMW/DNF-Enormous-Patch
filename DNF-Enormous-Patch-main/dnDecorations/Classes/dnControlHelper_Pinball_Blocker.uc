/*******************************************************************************
 * dnControlHelper_Pinball_Blocker generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnControlHelper_Pinball_Blocker extends RenderActor
    collapsecategories;

var bool bActOnKImpact;
var bool bActivated;
var dnControlHelper_Pinball_Light Light;

simulated function Activate()
{
    bActivated = true;
    __NFUN_621__(,,, true);
    __NFUN_590__(false);
    // End:0x2F
    if(__NFUN_340__(Light, none))
    {
        Light.Activate();
    }
    return;
}

function Destroyed()
{
    Light.__NFUN_614__();
    super.Destroyed();
    return;
}

simulated function Deactivate()
{
    bActivated = false;
    __NFUN_621__(,,, false);
    __NFUN_590__(true);
    // End:0x2F
    if(__NFUN_340__(Light, none))
    {
        Light.Deactivate();
    }
    return;
}

simulated function StartDeactivateTimer(float seconds)
{
    __NFUN_607__(seconds, false, 'Deactivate');
    return;
}

simulated function StartActivateTimer(float seconds)
{
    __NFUN_607__(seconds, false, 'Activate');
    return;
}

event KImpact(name SelfBoneName, KarmaActor Other, name OtherBoneName, Vector Position, Vector ImpactVelocity, Vector ImpactNormal)
{
    local dnControlHelper_Pinball_Ball Ball;

    Ball = dnControlHelper_Pinball_Ball(Other);
    // End:0x1E
    if(__NFUN_339__(Ball, none))
    {
        return;
    }
    super(KarmaActor).KImpact(SelfBoneName, Other, OtherBoneName, Position, ImpactVelocity, ImpactNormal);
    // End:0x4F
    if(bActOnKImpact / )
    {
    }
    StartDeactivateTimer(0.1);
    return;
}

defaultproperties
{
    KImpactThreshold=0
    bBlockKarma=true
    TickStyle=0
    DrawType=8
    StaticMesh='sm_class_decorations.Arcades.Pinball_TrackBlocker'
    Skins(0)='smt_skins14.Pinball_Blocker.Metal_Red_fb'
}