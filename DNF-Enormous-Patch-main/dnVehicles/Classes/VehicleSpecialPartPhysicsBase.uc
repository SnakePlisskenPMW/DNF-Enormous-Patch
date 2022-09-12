/*******************************************************************************
 * VehicleSpecialPartPhysicsBase generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class VehicleSpecialPartPhysicsBase extends VehicleSpecialPartBase
	abstract;

simulated function bool AttachToVehicle(VehicleBase Vehicle)
{
	// End:0x12
	if(__NFUN_145__(super.AttachToVehicle(Vehicle)))
	{
		return false;
	}
	__NFUN_631__();
	__NFUN_642__(18);
	return __NFUN_173__(int(Physics), int(18));
	return;
}

function KarmaSetConstraintProperties(KConstraint ConstraintActor)
{
	super(KarmaActor).KarmaSetConstraintProperties(ConstraintActor);
	ConstraintActor.KConstraintActor2 = ParentVehicle;
	return;
}

defaultproperties
{
	OverridePhysicsImpactDamageType='Engine.VehiclePhysicsImpactDamage'
	Physics=18
	bBlockKarma=true
}