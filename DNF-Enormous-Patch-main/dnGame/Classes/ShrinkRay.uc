/*******************************************************************************
 * ShrinkRay generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class ShrinkRay extends Weapon;

var class<SoftParticleSystem> MuzzleFlashClass;
var SoftParticleSystem MuzzleFlashActor;
var bool bFirePreProjectile;
var SAmbientSoundInfo IdleAmbientSoundInfo;

replication
{
    // Pos:0x000
    reliable if(/* An exception occurred while decompiling condition (System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.get_NextToken()
   at UELib.Core.UStruct.UByteCodeDecompiler.Token.DecompileNext()
   at UELib.Core.UStruct.UByteCodeDecompiler.FunctionToken.DecompileOperator(String operatorName)
   at UELib.Core.UStruct.UByteCodeDecompiler.NativeFunctionToken.Decompile()
   at UELib.Core.UClass.FormatReplication()) */)
        HandleMuzzleFlash;
}

event PostVerifySelf()
{
    super(RenderActor).PostVerifySelf();
    TurnOffMountedLights();
    return;
}

simulated function SetupWeaponSupportActors()
{
    super.SetupWeaponSupportActors();
    // End:0x21
    if(__NFUN_340__(MuzzleFlashClass, none))
    {
        MuzzleFlashActor = __NFUN_615__(MuzzleFlashClass, self);
    }
    return;
}

simulated function DestroyWeaponSupportActors()
{
    super.DestroyWeaponSupportActors();
    // End:0x1F
    if(__NFUN_340__(MuzzleFlashActor, none))
    {
        MuzzleFlashActor.__NFUN_614__();
    }
    return;
}

simulated function AttachSupportActors()
{
    super.AttachSupportActors();
    // End:0x77
    if(__NFUN_340__(MuzzleFlashActor, none))
    {
        MuzzleFlashActor.MountType = 2;
        MuzzleFlashActor.MountMeshItem = WeaponConfig.default.MuzzleInfo[0].MuzzleBoneName;
        MuzzleFlashActor.__NFUN_635__(self);
        MuzzleFlashActor.TickStyle = MuzzleFlashActor.default.TickStyle;
    }
    return;
}

simulated function DetachSupportActors()
{
    super.DetachSupportActors();
    // End:0x31
    if(__NFUN_340__(MuzzleFlashActor, none))
    {
        MuzzleFlashActor.__NFUN_631__();
        MuzzleFlashActor.TickStyle = 0;
    }
    return;
}

simulated function bool BringUp()
{
    TurnOnMountedLights();
    return super.BringUp();
    return;
}

simulated function bool PutDown()
{
    TurnOffMountedLights();
    return super.PutDown();
    return;
}

noexport simulated delegate HandleMuzzleFlash()
{
    // End:0x17
    if(__NFUN_340__(MuzzleFlashActor, none))
    {
        HandleParticleEffect(MuzzleFlashActor);
    }
    return;
}

simulated function Fire(optional bool bContinueFire)
{
    super.Fire(bContinueFire);
    bFirePreProjectile = true;
    HandleMuzzleFlash();
    return;
}

animevent simulated function Fire_Effects(optional EventInfo AnimEventInfo)
{
    bFirePreProjectile = false;
    super.Fire_Effects(AnimEventInfo);
    return;
}

final simulated function FireFadedOut()
{
    FindAndStopSound('Fire');
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(InteractiveActor).RegisterPrecacheComponents(PrecacheIndex);
    // End:0x16D
    if(PrecacheIndex.__NFUN_1285__(self))
    {
        PrecacheIndex.__NFUN_1269__(class'crosshair_shrinkray_fb');
        PrecacheIndex.__NFUN_1266__(MuzzleFlashClass);
        PrecacheIndex.__NFUN_1277__(VoicePack, 'Activate');
        PrecacheIndex.__NFUN_1277__(VoicePack, 'Deactivate');
        PrecacheIndex.__NFUN_1277__(VoicePack, 'idle');
        PrecacheIndex.__NFUN_1277__(VoicePack, 'Fire');
        PrecacheIndex.__NFUN_1277__(class'VoicePack_Duke', 'shrinkray_melee');
        PrecacheIndex.__NFUN_1269__(class'Pawn'.default.ShrinkingMaterial);
        PrecacheIndex.__NFUN_1276__(class'Pawn'.default.ShrinkSound);
        PrecacheIndex.__NFUN_1276__(class'Pawn'.default.ExpandSound);
        PrecacheIndex.__NFUN_1266__(class'dnScreenSplatter_Blood');
        PrecacheIndex.__NFUN_1279__(class'ShrunkSmashDamage');
        PrecacheIndex.__NFUN_1277__(class'DukePlayer'.default.VoicePack, 'Stomp_Squish');
        PrecacheIndex.__NFUN_1277__(class'DukePlayer'.default.VoicePack, 'StompLines');
    }
    return;
}

state() Firing
{
    event EndState()
    {
        // End:0x28
        if(bFirePreProjectile)
        {
            FindAndFadeSound('Fire', 0.25,,, 'FireFadedOut');
            bFirePreProjectile = false;
        }
        super.EndState();
        return;
    }
    stop;
}

state Activating
{
    simulated function EndState()
    {
        FindAndPlaySound('idle');
        super(Object).EndState();
        return;
    }
    stop;
}

state Deactivating
{
    simulated function BeginState()
    {
        __NFUN_701__(none);
        super.BeginState();
        return;
    }
    stop;
}

defaultproperties
{
    MuzzleFlashClass='p_Weapons.ShrinkRay_MuzzleFlash.ShrinkRay_MuzzleFlash_Spawner'
    WeaponConfig='ShrinkRayWeaponConfig'
    AmmoLoaded=7
    HUDAmmoClipIcon=10
    DOFWeapDist=11.5
    DOFWeapDistDelta=2
    CrosshairIndex=8
    dnInventoryCategory=5
    dnCategoryPriority=1
    CommandAlias="UseWeapon dnGame.ShrinkRay"
    InventoryReferenceClass='ShrinkRay'
    PickupClass='ShrinkRayPickup'
    bIsPrimaryWeapon=true
    HUDPickupEventIcon=9
    MountOnSpawn(0)=(bSkipVerifySelf=false,SpawnClass='Weapon_LightEx_ShrinkRay_GlowyCrap',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=3,Y=-4.25,Z=5.5),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=16384,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),RenderObject=none,DrawScale=0)
    AutoRegisterIKClasses(0)='IKSystemInfo_Shotgun'
    AnimationControllerClass='dnAnimationControllerEx_ShrinkRay'
    Mesh='c_dnWeapon.ShrinkRay'
    SoundVolume=200
    SoundRadius=1600
    SoundInnerRadius=800
    VoicePack='SoundConfig.Inventory.VoicePack_ShrinkRay'
}