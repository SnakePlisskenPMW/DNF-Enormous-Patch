/*******************************************************************************
 * Settings_Bathroom_ToiletPaper_HolderRoll generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Settings_Bathroom_ToiletPaper_HolderRoll extends Settings_Bathroom;

event PostBeginPlay()
{
    local KarmaActor KOwner;

    super(dnDecoration).PostBeginPlay();
    KOwner = KarmaActor(Owner);
    // End:0x2A
    if(__NFUN_340__(KOwner, none))
    {
        __NFUN_822__(KOwner);
    }
    return;
}

function KarmaSetConstraintProperties(KConstraint ConstraintActor)
{
    // End:0x3B
    if(__NFUN_340__(Owner, none) << Owner.bBlockKarma)
    {
        ConstraintActor.KConstraintActor2 = KarmaActor(Owner);
    }
    return;
}

simulated function bool CanBeUsedBy(Pawn User)
{
    // End:0x1C
    if(__NFUN_342__(User.LastQuickAction, 'None'))
    {
        return false;
    }
    return super(InteractiveActor).CanBeUsedBy(User);
    return;
}

event Used(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Used(Other, EventInstigator);
    // End:0x55
    if(__NFUN_341__(EventInstigator.LastQuickAction, 'None'))
    {
        bUsable = false;
        EventInstigator.HandQuickAction('RoundSwitch_Down');
        __NFUN_607__(0.3, false, 'AddSpin');
    }
    return;
}

final function AddSpin()
{
    bUsable = true;
    FindAndPlaySound('ToiletPaper_Nudge');
    __NFUN_791__(__NFUN_263__(WarnInternal(0, 0, -8), Rotation), 3);
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    super(dnDecoration).RegisterPrecacheComponents(PrecacheIndex);
    PrecacheIndex.__NFUN_1281__('RoundSwitch_Down');
    PrecacheIndex.__NFUN_1277__(VoicePack, 'ToiletPaper_Nudge');
    return;
}

defaultproperties
{
    AutoConstraints(0)=(bConstraintDisabledOnDeath=false,bConstraintOnDeath=false,BoneName=None,ConstraintMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=-16384,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),OtherConstraintActor=none,OtherConstraintBone=None,ConstraintClass='Engine.KHinge',ConstraintActor=none)
    HealthPrefab=1
    DamageThreshold=5
    bForceUsePhrase=true
    bUsable=true
    SpawnOnDestroyedSimple(0)='dnParticles.dnDebris_Smoke'
    SpawnOnDestroyedSimple(1)='dnParticles.dnDebris_Paper1'
    bTickOnlyWhenPhysicsAwake=true
    DynamicInteractionClassification=9
    KAngularDamping=0.5
    EnableDisableThreshold=0.1
    PhysicsEntityGroup=ToilerPaperHolderEntityGroup
    Physics=18
    CollisionRadius=4
    CollisionHeight=4.3
    Mass=10
    StaticMesh='sm_class_decorations.ToiletPaper_Wrapped.ToiletPaper_Wrapped'
}