/*******************************************************************************
 * dnSparkEffect generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnSparkEffect extends dnSparkFX
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	DestroyWhenEmpty=true
	UseZoneGravity=false
	AdditionalSpawn(0)=(SpawnClass='dnSparkEffect_Effect1',TakeParentTag=false,Mount=false,MountOrigin=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0)
	PrimeCount=1
	SpawnNumber=0
	SpawnPeriod=0
	Lifetime=0.25
	InitialVelocity=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	Textures(0)='dt_effects.LensFlares.pflare2'
	StartDrawScale=6
	EndDrawScale=0.1
	TriggerType=0
	PulseSeconds=0.25
	bForceNonFinalBlendBlooms=true
	NonFinalBlendBloomTint=(B=85,G=1,R=1,A=128)
	VisibilityRadius=6000
	Style=3
}