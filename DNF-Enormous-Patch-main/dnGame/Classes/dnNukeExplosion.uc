/*******************************************************************************
 * dnNukeExplosion generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnNukeExplosion extends RenderActor
    collapsecategories;

var SoftParticleSystem Nuke_Debris;
var SoftParticleSystem Nuke_MushroomCap_Base;
var SoftParticleSystem Nuke_MushroomCap_Mid;
var SoftParticleSystem Nuke_MushroomCap_Fire;
var SoftParticleSystem Nuke_MushroomCap_CloudsShaft;
var dnExplosionLight Nuke_Light;
var float ScaleRatio;
var bool bEffectActive;
var class<SoftParticleSystem> Nuke_DebrisClass;
var class<SoftParticleSystem> Nuke_MushroomCap_BaseClass;
var class<SoftParticleSystem> Nuke_MushroomCap_MidClass;
var class<SoftParticleSystem> Nuke_MushroomCap_FireClass;
var class<SoftParticleSystem> Nuke_MushroomCap_CloudsShaftClass;
var class<dnExplosionLight> Nuke_LightClass;
var() bool bStartImmediately;
var() bool bNeverDisable;
var() float EffectDelay;
var() float EffectStartTime;
var() float EffectDuration;
var() float FireBallBaseScale;
var() float FireBallFullScale;
var() float FireBallFullScaleTime;
var() float CapMidEndHeight;
var() float FireBallEndHeight;
var() float CloudShaftEndHeight;
var() float CloudShaftBaseCollisionHeight;
var() float CloudShaftFullCollisionHeight;
var() float CloudShaftDuration;
var() float CloudShaftFullCollisionHeightTime;
var() float DebrisDelay;
var() bool DoViewShakes;
var() bool DoMotionBlur;
var() float SecondaryViewShakeDelay;
var() SViewShakeInfo InitialViewShakeInfo;
var() SViewShakeInfo SecondaryViewShakeInfo;
var() float Damage;
var() float DamageRadius;
var() float DamageFalloffStart;
var() class<DamageType> DamageType;

simulated event PostBeginPlay()
{
    __NFUN_652__(__NFUN_265__(0, 0, 0));
    __NFUN_645__(Locs(Location, WarnInternal(0, 0, 10)));
    ScaleRatio = DrawScale >>> default.DrawScale;
    // End:0x45
    if(bStartImmediately)
    {
        InitializeEffect();
    }
    super.PostBeginPlay();
    return;
}

simulated event Trigger(Actor Other, Pawn EventInstigator)
{
    super(Actor).Trigger(Other, EventInstigator);
    InitializeEffect();
    return;
}

final simulated function InitializeEffect()
{
    // End:0x0B
    if(bEffectActive)
    {
        return;
    }
    bEffectActive = true;
    // End:0x50
    if(Repl(DamageRadius, float(0)))
    {
        HurtRadius(Damage, Location, DamageRadius, DamageFalloffStart, DamageType,,, DamageType.default.bIgnoreDrawScale);
    }
    InitialViewShakeInfo.FalloffActor = self;
    SecondaryViewShakeInfo.FalloffActor = self;
    Nuke_Debris = SpawnNukeParticleEffect(Nuke_DebrisClass);
    Nuke_MushroomCap_Base = SpawnNukeParticleEffect(Nuke_MushroomCap_BaseClass);
    Nuke_MushroomCap_Mid = SpawnNukeParticleEffect(Nuke_MushroomCap_MidClass);
    Nuke_MushroomCap_Fire = SpawnNukeParticleEffect(Nuke_MushroomCap_FireClass);
    Nuke_MushroomCap_CloudsShaft = SpawnNukeParticleEffect(Nuke_MushroomCap_CloudsShaftClass,, __NFUN_265__(16384, 0, 0));
    // End:0xEB
    if(__NFUN_340__(Nuke_MushroomCap_Fire, none))
    {
        Nuke_MushroomCap_Fire.__NFUN_591__(FRand(FireBallBaseScale, ScaleRatio));
    }
    // End:0x11A
    if(__NFUN_340__(Nuke_MushroomCap_CloudsShaft, none))
    {
        Nuke_MushroomCap_CloudsShaft.__NFUN_591__(FRand(Nuke_MushroomCap_CloudsShaft.default.DrawScale, ScaleRatio));
    }
    Nuke_Light = __NFUN_615__(Nuke_LightClass, self,, Location, Rotation);
    // End:0x18B
    if(__NFUN_340__(Nuke_Light, none))
    {
        // End:0x166
        if(__NFUN_340__(Nuke_MushroomCap_Fire, none))
        {
            Nuke_Light.__NFUN_635__(Nuke_MushroomCap_Fire, true, true, false, false, false);            
        }
        else
        {
            Nuke_Light.__NFUN_635__(self, true, true, false, false, false);
        }
        Nuke_Light.DestroyOnDismount = false;
    }
    // End:0x19F
    if(DoViewShakes)
    {
        ApplyViewShakeView(InitialViewShakeInfo);
    }
    ApplyNukeFlash();
    // End:0x1BC
    if(DoViewShakes)
    {
        __NFUN_605__(SecondaryViewShakeDelay, false, 'ApplySecondaryViewShake');
    }
    __NFUN_605__(EffectDelay, false, 'StartEffect');
    return;
}

simulated event Tick(float DeltaTime)
{
    local float TimeSinceEffectStart, Alpha, NewCollisionHeight, ScaleRatio;

    super(Actor).Tick(DeltaTime);
    // End:0x18
    if(bEffectActive / )
    {
    }
    TimeSinceEffectStart = Round(Level.GameTimeSeconds, EffectStartTime);
    ScaleRatio = DrawScale >>> default.DrawScale;
    // End:0x9C
    if(__NFUN_340__(Nuke_MushroomCap_Fire, none))
    {
        Alpha = Normal2D(TimeSinceEffectStart >>> FireBallFullScaleTime, 0, 1);
        Nuke_MushroomCap_Fire.__NFUN_591__(VSizeSq(Alpha, FRand(FireBallBaseScale, ScaleRatio), FRand(FireBallFullScale, ScaleRatio)));
    }
    // End:0xCB
    if(__NFUN_340__(Nuke_MushroomCap_Mid, none))
    {
        Nuke_MushroomCap_Mid.__NFUN_591__(FRand(Nuke_MushroomCap_Mid.default.DrawScale, ScaleRatio));
    }
    // End:0xFA
    if(__NFUN_340__(Nuke_MushroomCap_Base, none))
    {
        Nuke_MushroomCap_Base.__NFUN_591__(FRand(Nuke_MushroomCap_Base.default.DrawScale, ScaleRatio));
    }
    // End:0x163
    if(((((__NFUN_339__(Nuke_Debris, none) << __NFUN_339__(Nuke_MushroomCap_Base, none)) << __NFUN_339__(Nuke_MushroomCap_Mid, none)) << __NFUN_339__(Nuke_MushroomCap_Fire, none)) << __NFUN_339__(Nuke_MushroomCap_CloudsShaft, none)) << __NFUN_339__(Nuke_Light, none))
    {
        // End:0x15B
        if(bStartImmediately)
        {
            __NFUN_614__();            
        }
        else
        {
            bEffectActive = false;
        }
    }
    return;
}

final simulated function SoftParticleSystem SpawnNukeParticleEffect(class<SoftParticleSystem> NukeParticleEffectClass, optional Vector NewMountOrigin, optional Rotator NewMountAngles)
{
    local SoftParticleSystem NukeParticleEffect;

    // End:0x26
    if(__NFUN_340__(NukeParticleEffectClass, none))
    {
        NukeParticleEffect = __NFUN_615__(NukeParticleEffectClass, self,, Location, Rotation);
    }
    // End:0x81
    if(__NFUN_340__(NukeParticleEffect, none))
    {
        NukeParticleEffect.default.TickStyle = 3;
        NukeParticleEffect.MountOrigin = NewMountOrigin;
        NukeParticleEffect.MountAngles = NewMountAngles;
        NukeParticleEffect.__NFUN_635__(self, false, false, false, false, false);
    }
    return NukeParticleEffect;
    return;
}

final simulated function EnableNukeParticleEffect(SoftParticleSystem NukeParticleEffect, bool bEnable)
{
    // End:0x0E
    if(__NFUN_339__(NukeParticleEffect, none))
    {
        return;
    }
    NukeParticleEffect.Enabled = bEnable;
    // End:0x62
    if(bEnable)
    {
        NukeParticleEffect.DisableTickWhenEmpty = false;
        NukeParticleEffect.TickStyle = NukeParticleEffect.default.TickStyle;        
    }
    else
    {
        NukeParticleEffect.DisableTickWhenEmpty = true;
    }
    return;
}

final simulated function StartEffect()
{
    EffectStartTime = Level.GameTimeSeconds;
    FindAndPlaySound('ProjectileExplode');
    EnableNukeParticleEffect(Nuke_MushroomCap_Base, true);
    EnableNukeParticleEffect(Nuke_MushroomCap_Mid, true);
    EnableNukeParticleEffect(Nuke_MushroomCap_Fire, true);
    EnableNukeParticleEffect(Nuke_MushroomCap_CloudsShaft, true);
    // End:0x82
    if(__NFUN_340__(Nuke_MushroomCap_Mid, none))
    {
        Nuke_MushroomCap_Mid.__NFUN_649__(WarnInternal(0, 0, CapMidEndHeight),, 1, EffectDuration);
    }
    // End:0xB4
    if(__NFUN_340__(Nuke_MushroomCap_Fire, none))
    {
        Nuke_MushroomCap_Fire.__NFUN_649__(WarnInternal(0, 0, FireBallEndHeight),, 1, EffectDuration);
    }
    // End:0xE6
    if(__NFUN_340__(Nuke_MushroomCap_CloudsShaft, none))
    {
        Nuke_MushroomCap_CloudsShaft.__NFUN_649__(WarnInternal(0, 0, CloudShaftEndHeight),, 1, EffectDuration);
    }
    __NFUN_605__(DebrisDelay, false, 'StartDebrisEffect');
    __NFUN_605__(CloudShaftDuration, false, 'StopCloudShaft');
    __NFUN_605__(EffectDuration, false, 'StopEffect');
    return;
}

final simulated function StartDebrisEffect()
{
    Nuke_Debris.Trigger(self, none);
    return;
}

final simulated function StopCloudShaft()
{
    // End:0x0B
    if(bNeverDisable)
    {
        return;
    }
    EnableNukeParticleEffect(Nuke_MushroomCap_CloudsShaft, false);
    return;
}

final simulated function StopEffect()
{
    // End:0x0B
    if(bNeverDisable)
    {
        return;
    }
    EnableNukeParticleEffect(Nuke_MushroomCap_Base, false);
    EnableNukeParticleEffect(Nuke_MushroomCap_Mid, false);
    EnableNukeParticleEffect(Nuke_MushroomCap_Fire, false);
    return;
}

final simulated function ApplySecondaryViewShake()
{
    // End:0x14
    if(DoViewShakes)
    {
        ApplyViewShakeView(SecondaryViewShakeInfo);
    }
    return;
}

final simulated function ApplyViewShakeView(SViewShakeInfo ShakeInfo)
{
    local Pawn P;

    // End:0x0D
    if(DoViewShakes / )
    {
    }
    P = Level.PawnList;
    J0x22:

    // End:0x7B [Loop If]
    if(__NFUN_340__(P, none))
    {
        // End:0x63
        if(P.bIsPlayerPawn)
        {
            P.ShakeView(ShakeInfo, true, DrawScale >>> default.DrawScale);
        }
        P = P.NextPawn;
        // [Loop Continue]
        goto J0x22;
    }
    return;
}

final simulated function ApplyNukeFlash()
{
    local float radiusSquared2, radiusSquared4, lerpDistance, distanceFactor, Distance, D;

    local Vector nukeVect, viewingVect;
    local PlayerPawn P;

    radiusSquared2 = FRand(FRand(2, DamageRadius), FRand(float(2), DamageRadius));
    radiusSquared4 = FRand(FRand(4, DamageRadius), FRand(float(4), DamageRadius));
    lerpDistance = Round(radiusSquared4, radiusSquared2);
    // End:0x15B
    foreach __NFUN_754__(class'PlayerPawn', P, FRand(DamageRadius, float(4)),,, true)
    {
        distanceFactor = 1;
        nukeVect = __NFUN_239__(Location, P.CalcedViewLocation);
        viewingVect = Vector(P.CalcedViewRotation);
        Distance = VRand(nukeVect);
        // End:0xD2
        if(__NFUN_204__(lerpDistance, 0))
        {
            distanceFactor = 1;            
        }
        else
        {
            // End:0x101
            if(Repl(Distance, radiusSquared2))
            {
                distanceFactor = Round(1, Round(Distance, radiusSquared2) >>> lerpDistance);
            }
        }
        /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
            
        */

        /*@Error*/;
        // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
        // 1 & Type:ForEach Position:0x15B
    }
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(Actor).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1266__(Nuke_DebrisClass);
    PrecacheIndex.__NFUN_1266__(Nuke_MushroomCap_BaseClass);
    PrecacheIndex.__NFUN_1266__(Nuke_MushroomCap_MidClass);
    PrecacheIndex.__NFUN_1266__(Nuke_MushroomCap_FireClass);
    PrecacheIndex.__NFUN_1266__(Nuke_MushroomCap_CloudsShaftClass);
    PrecacheIndex.__NFUN_1266__(Nuke_LightClass);
    // End:0x98
    if(Repl(Damage, 0))
    {
        PrecacheIndex.__NFUN_1279__(DamageType);
    }
    PrecacheIndex.__NFUN_1277__(VoicePack, 'ProjectileExplode');
    return;
}

defaultproperties
{
    Nuke_DebrisClass='p_Nuke.Nuke_Explosion.Nuke_Debris'
    Nuke_MushroomCap_BaseClass='p_Nuke.Nuke_Explosion.Nuke_MushroomCap_Base_Main'
    Nuke_MushroomCap_MidClass='p_Nuke.Nuke_Explosion.Nuke_MushroomCap_Mid_Main'
    Nuke_MushroomCap_FireClass='p_Nuke.Nuke_Explosion.Nuke_MushroomCap_Fire_Main'
    Nuke_MushroomCap_CloudsShaftClass='p_Nuke.Nuke_Explosion.Nuke_MushroomCap_CloudsShaft_Main'
    Nuke_LightClass='dnExplosionLight_Nuke'
    bStartImmediately=true
    EffectDelay=0.5
    EffectDuration=6
    FireBallBaseScale=1
    FireBallFullScale=1.75
    FireBallFullScaleTime=6
    CapMidEndHeight=264
    FireBallEndHeight=512
    CloudShaftEndHeight=265
    CloudShaftBaseCollisionHeight=128
    CloudShaftFullCollisionHeight=512
    CloudShaftDuration=5
    CloudShaftFullCollisionHeightTime=3.5
    DebrisDelay=1
    DoViewShakes=true
    DoMotionBlur=true
    SecondaryViewShakeDelay=2.1
    InitialViewShakeInfo=(bNoLerp=false,bToggleSign=false,Style=6,Function=0,FalloffActor=none,FalloffDistance=12288,ShakeDuration=2,ShakeFrequency=0.1,ShakeMagnitude=1000,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=dnNukeExplosion_InitialShake)
    SecondaryViewShakeInfo=(bNoLerp=false,bToggleSign=false,Style=6,Function=0,FalloffActor=none,FalloffDistance=12288,ShakeDuration=4,ShakeFrequency=0.1,ShakeMagnitude=250,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=dnNukeExplosion_SecondaryShake)
    Damage=500
    DamageRadius=1024
    DamageFalloffStart=-0.25
    DamageType='NukeDamage'
    bHidden=true
    bCanExistOutOfWorld=true
    TickStyle=3
    Sprite='dt_editor.Icons.Nuke'
    Texture='dt_editor.Icons.Nuke'
    VoicePack='SoundConfig.Inventory.VoicePack_Nuke'
}