/*******************************************************************************
 * WeaponPickup generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class WeaponPickup extends Pickup
    abstract
    native
    collapsecategories
    notplaceable;

cpptext
{
// Stripped
}

var() bool bWeaponStay;
var bool bWeaponDropped;
var localized string ItemName;

replication
{
    // Pos:0x000
    reliable if(int(Role) % int(ROLE_Authority))
        ItemName;
}

simulated event PostBeginPlay()
{
    super(InteractiveActor).PostBeginPlay();
    // End:0x1B
    if(IsMP())
    {
        __NFUN_642__(0);
        __NFUN_621__(,,, false);
    }
    return;
}

simulated function bool CanBeUsedBy(Pawn User)
{
    return false;
    return;
}

defaultproperties
{
    RespawnTime=30
    bTickOnlyWhenPhysicsAwake=true
    PhysicsEntityGroup=CorpsePhysicsEntityGroup
    PhysicsSoundOverrides(0)=(SoundType=0,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=('a_impact.Generic.Weapon_Drop_01','a_impact.Generic.Weapon_Drop_02'),SoundInfo=(InputRange=(Min=10,Max=250),OutputPitchRange=(Min=0.9,Max=1),OutputVolumeRange=(Min=0.5,Max=1)),bDisableSoundInWater=true)
    PhysicsSoundOverrides(1)=(SoundType=1,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=none,SoundInfo=(InputRange=(Min=0,Max=0),OutputPitchRange=(Min=0,Max=0),OutputVolumeRange=(Min=0,Max=0)),bDisableSoundInWater=false)
    PhysicsSoundOverrides(2)=(SoundType=2,OtherMaterialTypes=none,OtherMassTypes=none,Sounds=none,SoundInfo=(InputRange=(Min=0,Max=0),OutputPitchRange=(Min=0,Max=0),OutputVolumeRange=(Min=0,Max=0)),bDisableSoundInWater=false)
    bDoOverlayEffect=true
    bOverlayEffectUsedAsHint=true
    OverlayMaterial='dt_effects.OverlayMaterial.OverlayMaterial_Boss'
}