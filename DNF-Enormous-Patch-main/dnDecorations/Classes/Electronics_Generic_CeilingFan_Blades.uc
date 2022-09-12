/*******************************************************************************
 * Electronics_Generic_CeilingFan_Blades generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Electronics_Generic_CeilingFan_Blades extends Electronics_Generic;

var KAngularMotorAffector motor;

event Trigger(Actor Other, Pawn EventInstigator)
{
    super(dnDecoration).Trigger(Other, EventInstigator);
    // End:0x36
    if(__NFUN_340__(motor, none))
    {
        motor.Trigger(Other, EventInstigator);
    }
    return;
}

function KarmaSetConstraintProperties(KConstraint ConstraintActor)
{
    local KAngularMotorAffector LocalMotor;

    // End:0x26
    if(__NFUN_340__(Owner, none))
    {
        ConstraintActor.KConstraintActor2 = KarmaActor(Owner);
    }
    LocalMotor = KAngularMotorAffector(ConstraintActor);
    // End:0x5D
    if(__NFUN_340__(LocalMotor, none))
    {
        motor = LocalMotor;
        SetMotorInfo(90000, 50);
    }
    return;
}

function SetMotorInfo(float MotorSpeed, float MotorMaxTorque)
{
    // End:0x0E
    if(__NFUN_339__(motor, none))
    {
        return;
    }
    motor.__NFUN_1110__(MotorSpeed);
    motor.__NFUN_1111__(MotorMaxTorque);
    // End:0x5F
    if(__NFUN_340__(motor.KConstraintActor1, none))
    {
        motor.KConstraintActor1.__NFUN_817__();
    }
    return;
}

defaultproperties
{
    AutoConstraints(0)=(bConstraintDisabledOnDeath=false,bConstraintOnDeath=false,BoneName=None,ConstraintMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=-16384,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),OtherConstraintActor=none,OtherConstraintBone=None,ConstraintClass='Engine.KHinge',ConstraintActor=none)
    AutoConstraints(1)=(bConstraintDisabledOnDeath=false,bConstraintOnDeath=false,BoneName=None,ConstraintMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=16384,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=0,DismountPhysics=0),OtherConstraintActor=none,OtherConstraintBone=None,ConstraintClass='Engine.KAngularMotorAffector',ConstraintActor=none)
    HealthPrefab=0
    bStartEnabled=true
    bTickOnlyWhenPhysicsAwake=true
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Wood_Solid'
    PhysicsMassType=1
    EnableDisableThreshold=0.1
    PhysicsStartupTime=3
    Physics=18
    CollisionRadius=47
    CollisionHeight=1
    Mass=10
    StaticMesh='sm_class_decorations.CeilingFan.cfan_blades'
}