/*******************************************************************************
 * dnNukeFX_Burn generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnNukeFX_Burn extends dnNukeFX
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	DestroyWhenEmptyAfterSpawn=true
	UpdateRateEnforced=true
	RelativeSpawnVelocity=true
	RelativeLocation=true
	UseZoneGravity=false
	bUseAlphaRamp=true
	UpdateRateMax=0.02
	AdditionalSpawn(0)=(SpawnClass='dnNukeFX_Trail',TakeParentTag=false,Mount=true,MountOrigin=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0)
	SpawnPeriod=0.02
	Lifetime=0.25
	InitialVelocity=(X=1.291857E-41,Y=2.813706E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	AlphaMid=1
	AlphaEnd=0
	AlphaRampMid=0.75
	Textures(0)='dt_effects.LensFlares.pflare5ABC'
	EndDrawScale=0.3
	RotationVariance=6.14
	bForceNonFinalBlendBlooms=true
	NonFinalBlendBloomTint=(B=85,G=1,R=1,A=96)
	DestroyOnDismount=true
	bIgnoreBList=true
	CollisionRadius=0.5
	CollisionHeight=0.5
	Style=3
}