/*******************************************************************************
 * RCCar_VehicleSpace_Driver generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RCCar_VehicleSpace_Driver extends Generic_VehicleSpace_Driver
	collapsecategories;

simulated function AttachPawnSuccess(Pawn Attachee, optional bool bForced)
{
	// End:0x43
	if(__NFUN_148__(__NFUN_145__(Attachee.bFullyShrunk), __NFUN_145__(Attachee.IsShrinking())))
	{
		Attachee.ShrinkPawn(-1, true, true);
	}
	super(VehicleSpaceBase).AttachPawnSuccess(Attachee, bForced);
	return;
}

state AttachUserAnimSecondary
{
	function BeginState()
	{
		User.AnimCallback_AttachedToDecoration();
		ControlEvent(, 'NoIgnition');
		return;
	}
	stop;
}

defaultproperties
{
	SteerGridName=RCCar_SteerGrid
	States=/* Array type was not detected. */
}