/*******************************************************************************
 * dnC9FX_Explosion_Fire generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnC9FX_Explosion_Fire extends dnC9FX_Explosion_Friends
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	SpawnAtRadius=true
	bUseAlphaRamp=true
	Lifetime=0.3
	LifetimeVariance=0.1
	InitialVelocity=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	ApexInitialVelocity=200
	ApexInitialVelocityVariance=300
	AlphaMid=0.8
	AlphaEnd=0
	Textures(0)='dt_effects.explosions.RPGexplo1aRC_FB'
	Textures(1)='dt_effects.explosions.RPGexplo1dRC_FB'
	Textures(2)='dt_effects.explosions.RPGexplo1cRC_FB'
	Textures(3)='dt_effects.explosions.RPGexplo1bRC_FB'
	StartDrawScale=0.125
	DrawScaleVariance=0.2
	RotationVariance=0
	RotationVelocityMaxVariance=5
	CollisionRadius=0.3
	CollisionHeight=1
	Style=8
}