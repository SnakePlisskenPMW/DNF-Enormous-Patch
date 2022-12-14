/*******************************************************************************
 * dnSuperTurret_Beam_ShotEffect generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnSuperTurret_Beam_ShotEffect extends BeamSystem
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,Karma,KarmaObject,KarmaOverride,Lighting,Networking,ParticleSystemBase,ParticleTextureInfo,SoftParticleSystem,Sound,SpawnOnDestroyed);

defaultproperties
{
	TraceEnabled=false
	BeamStartWidth=32
	BeamEndWidth=32
	TracerSpeed=9000
	TracerLength=256
	BeamTexture='dt_effects.Beams.SuperTurret_Beam'
	BeamType=8
	bForceNonFinalBlendBlooms=true
	NonFinalBlendBloomTint=(B=85,G=1,R=1,A=255)
	TickStyle=3
	Style=6
	ActorColorList(0)=(ActorColor=(B=85,G=1,R=1,A=255),G=255,B=255,A=255)
	ActorColorList(1)=(ActorColor_LightEx=none,ActorColor_LightExScale=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0)
	RemoteRole=0
}