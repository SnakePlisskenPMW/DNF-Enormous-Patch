/*******************************************************************************
 * AssaultTrooperFX_JetpackTrail generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class AssaultTrooperFX_JetpackTrail extends AssaultTrooperFX
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	Enabled=false
	DestroyWhenEmptyAfterSpawn=true
	UpdateRateEnforced=true
	RelativeSpawn=true
	RelativeSpawnVelocity=true
	UseZoneGravity=false
	TriggerOnDismount=true
	UpdateRateMax=0.02
	SpawnPeriod=0.03
	Lifetime=1.5
	LifetimeVariance=0.1
	InitialVelocity=(X=1.291857E-41,Y=2.802877E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.80262E-17,Z=1)
	AlphaStart=0.25
	AlphaEnd=0
	Textures(0)='dt_effects.Smoke.alphasmoke1RC'
	StartDrawScale=0.02
	EndDrawScale=0.62
	DrawScaleEndVariance=0.04
	RotationVariance=6.18
	TriggerAfterSeconds=0.125
	bIgnoreBList=true
	CollisionRadius=1
	CollisionHeight=1
	TickStyle=3
	Style=8
}