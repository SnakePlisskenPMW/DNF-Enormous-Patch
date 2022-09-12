/*******************************************************************************
 * dnExplosion3_SmallElectronic generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnExplosion3_SmallElectronic extends dnExplosionFX
	collapsecategories
	hidecategories(Filter,HeatVision,Interactivity,KarmaObject,KarmaOverride,Networking);

defaultproperties
{
	Enabled=false
	DestroyWhenEmpty=true
	UseZoneGravity=false
	AdditionalSpawn(0)=(SpawnClass='dnExplosion3_SElec_Fire',TakeParentTag=false,Mount=false,MountOrigin=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0)
	AdditionalSpawn(1)=(MountAngles=(Pitch=8719,Yaw=571539456,Roll=0),Roll=0)
	ParticleSystemSounds(0)=(bPlayRelative=false,bIgnoreVelocity=false,SystemSoundType=0,SystemSound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=('a_impact.explosions.Expl118'),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0,VolumeVariance=0,InnerRadius=8192,InnerRadiusVariance=0,Radius=16384,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0),Velocity3D=(X=1.291857E-41,Y=2.797242E-17,Z=0),Z=0))
	PrimeCount=1
	PrimeTimeIncrement=0
	SpawnNumber=0
	Lifetime=0.25
	InitialVelocity=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	MaxVelocityVariance=(X=1.291857E-41,Y=2.797242E-17,Z=0)
	Textures(0)='dt_effects.LensFlares.pflare2'
	StartDrawScale=6
	EndDrawScale=0.1
	TriggerType=0
	PulseSeconds=0.25
	DamageAmount=8
	DamageRadius=100
	CollisionRadius=0
	CollisionHeight=0
	Style=3
}