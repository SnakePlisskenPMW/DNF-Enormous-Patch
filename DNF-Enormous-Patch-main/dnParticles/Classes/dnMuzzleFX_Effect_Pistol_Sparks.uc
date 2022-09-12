/*******************************************************************************
 * dnMuzzleFX_Effect_Pistol_Sparks generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnMuzzleFX_Effect_Pistol_Sparks extends dnMuzzleFX_Effects
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	UseLines=true
	ConstantLength=true
	Lifetime=0.18
	LifetimeVariance=0.1
	InitialVelocity=(X=1.291857E-41,Y=2.803012E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.80298E-17,Z=128)
	ZoneGravityScaler=0.5
	AlphaEnd=0
	Textures(0)='dt_effects.Sparks.spark1RC'
	StartDrawScale=8
	EndDrawScale=4
	DrawScaleVariance=2
	bForceNonFinalBlendBlooms=true
	Style=6
}