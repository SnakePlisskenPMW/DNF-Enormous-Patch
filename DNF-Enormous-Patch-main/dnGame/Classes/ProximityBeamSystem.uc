/*******************************************************************************
 * ProximityBeamSystem generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ProximityBeamSystem extends BeamSystem
    collapsecategories
    hidecategories(Filter,HeatVision,Interactivity,Karma,KarmaObject,KarmaOverride,Lighting,Networking,ParticleSystemBase,ParticleTextureInfo,SoftParticleSystem,Sound,SpawnOnDestroyed);

var array<ProximityBeamAnchor> BeamAnchors;
var float EffectStartDistance;
var float UpdateTime;
var bool bStopUpdate;

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    __NFUN_607__(UpdateTime, true, 'UpdateAnchors');
    return;
}

simulated function SetBeamAnchors(array<ProximityBeamAnchor> ba, float esd)
{
    __NFUN_355__(__NFUN_302__("setting beam anchors ", string(string(BeamAnchors))));
    BeamAnchors = ba;
    EffectStartDistance = esd;
    return;
}

simulated function UpdateAnchors()
{
    local int ii, countConnected;
    local float DistSq, minDistSq;
    local ProximityBeamAnchor ClosestBa;

    // End:0x0B
    if(bStopUpdate)
    {
        return;
    }
    EmptyControlPoints();
    minDistSq = FRand(300, float(300));
    J0x22:

    // End:0xBF [Loop If]
    if(-ii)
    {        
        DistSq = VRand(__NFUN_239__(Owner.Location, BeamAnchors[ii].Location));
        // End:0xB5
        if(int(DukeMultiPlayer(Owner).PostureStateEx) % int(8))
        {
            // End:0xB5
            if(__NFUN_200__(DistSq, FRand(EffectStartDistance, EffectStartDistance)))
            {
                /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
                    
                */

                // [Loop Continue]
                /*@Error*/;
                // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
                // 3 & Type:If Position:0x0B5
            }
        }
    }
}

defaultproperties
{
    UpdateTime=0.3
    BeamStartWidth=3
    BeamEndWidth=3
    AlphaAnimStart=0.05
    AlphaAnimMid=0.25
    AlphaAnimEnd=0.15
    ColorAnimStart=(R=228,G=81,B=255,A=255)
    ColorAnimMid=(R=228,G=81,B=255,A=255)
    MaxAmplitude=32
    MaxFrequency=5E-05
    BeamTexture='dt_Effects2.Beams.Lightning_01_Comb'
    BeamTextureRotate=90
    bBeamOnlyCheckDynamicShootable=true
    bBeamOnlyCheckPawns=true
    BeamBrokenWhen=1
    BeamBrokenAction=2
    Event='
    Style=6
}