/*******************************************************************************
 * LiftSpecialPart_BarrelEjectionSensor generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class LiftSpecialPart_BarrelEjectionSensor extends KBoxSensor
	collapsecategories;

var float EjectionVelocity;

simulated event PreLoadMap()
{
	super(Actor).PreLoadMap();
	__NFUN_362__('Tick');
	return;
}

event BeginSenseObject(KarmaActor Actor)
{
	super(KSensor).BeginSenseObject(Actor);
	__NFUN_361__('Tick');
	return;
}

event EndSenseObject(KarmaActor Actor)
{
	local array<SKarmaInteraction> SensedActors;

	super(KSensor).EndSenseObject(Actor);
	SensedActors = __NFUN_1123__();
	// End:0x28
	if(__NFUN_173__(string(SensedActors), 0))
	{
		__NFUN_362__('Tick');
	}
	return;
}

event Tick(float DeltaTime)
{
	local int i;
	local array<SKarmaInteraction> SensedActors;
	local Vector Direction, Velocity;
	local float VelocityInDirection;

	super(Actor).Tick(DeltaTime);
	SensedActors = __NFUN_1123__();
	i = __NFUN_166__(string(SensedActors), 1);
	J0x23:

	// End:0x145 [Loop If]
	if(__NFUN_172__(i, 0))
	{
		// End:0x48
		if(__NFUN_339__(SensedActors[i].Actor, none))
		{
			// [Explicit Continue]
			goto J0x13B;
		}
		Direction = __NFUN_239__(SensedActors[i].Actor.Location, Location);
		Direction.Z = 0;
		Direction = __NFUN_253__(Direction);
		SensedActors[i].Actor.__NFUN_794__(Velocity, SensedActors[i].BoneName);
		VelocityInDirection = __NFUN_244__(Velocity, Direction);
		// End:0x13B
		if(__NFUN_200__(VelocityInDirection, EjectionVelocity))
		{
			__NFUN_249__(Velocity, __NFUN_235__(__NFUN_199__(EjectionVelocity, VelocityInDirection), Direction));
			SensedActors[i].Actor.__NFUN_817__();
			SensedActors[i].Actor.__NFUN_790__(Velocity, 1, SensedActors[i].BoneName);
		}
		J0x13B:

		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x23;
	}
	return;
}

defaultproperties
{
	EjectionVelocity=100
	BoxSensorSize=(X=1.291997E-41,Y=2.802898E-17,Z=45)
	OnlySenseClasses=/* Array type was not detected. */
	Z=29
}