/*******************************************************************************
 * RatMeleeDamageNoSound generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class RatMeleeDamageNoSound extends RatMeleeDamage
    abstract;

defaultproperties
{
    MaterialEffectMappings(0)=(MaterialClasses=('dnMaterial.Flesh_Alien'),Effect=(bMountHitFX=false,Effect='p_hit_effects.Blood_Melee.Blood_Melee_Spawner',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(1)=(MaterialClasses=('dnMaterial.Flesh_Human'),Effect=(bMountHitFX=false,Effect='p_hit_effects.Blood_Melee.Blood_Melee_Spawner',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(2)=(MaterialClasses=('dnMaterial.Goo'),Effect=(bMountHitFX=false,Effect='p_Impacts.HiveGooSplash.HiveGooSplash_Spawner',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(3)=(MaterialClasses=('dnMaterial.Ice'),Effect=(bMountHitFX=false,Effect='p_Impacts.BulletImpact_Ice.BulletImpact_Ice_Spawner',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(4)=(MaterialClasses=('dnMaterial.dnMaterial_Fabric'),Effect=(bMountHitFX=false,Effect='dnParticles.dnHitFX_Spawner_Melee_Fabric',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(5)=(MaterialClasses=('dnMaterial.dnMaterial_Glass'),Effect=(bMountHitFX=false,Effect=none,EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(6)=(MaterialClasses=('dnMaterial.dnMaterial_Liquid'),Effect=(bMountHitFX=false,Effect=none,EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(7)=(MaterialClasses=('dnMaterial.dnMaterial_Metal'),Effect=(bMountHitFX=false,Effect='dnParticles.dnHitFX_Spawner_Melee_Metal',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(8)=(MaterialClasses=('dnMaterial.dnMaterial_Nature'),Effect=(bMountHitFX=false,Effect=none,EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(9)=(MaterialClasses=('dnMaterial.dnMaterial_Plastic'),Effect=(bMountHitFX=false,Effect=none,EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(10)=(MaterialClasses=('dnMaterial.dnMaterial_Stone'),Effect=(bMountHitFX=false,Effect='p_Impacts.BulletImpact_Concrete.BulletImpact_Concrete_Spawner',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
    MaterialEffectMappings(11)=(MaterialClasses=('dnMaterial.dnMaterial_Wood'),Effect=(bMountHitFX=false,Effect='dnParticles.dnHitFX_Spawner_Melee_Wood',EffectScale=0,FakeLightIntensity=0,LifetimeOverride=0,Action=none,EffectDecal=none,Sound=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=(none),SlotPriority=0,VolumePrefab=0,Slots=none,Volume=0.75,VolumeVariance=0,InnerRadius=64,InnerRadiusVariance=0,Radius=512,RadiusVariance=0,Pitch=1,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=0,Y=0,Z=0),Velocity3D=(X=0,Y=0,Z=0)),Offset=0,Delay=0,SlotIndex=0,ForcedIndex=0,SoundFadeInfo=(FadeInDuration=0,FadeOutStartTime=0,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None),SoundEndCallback=None,PlayedSounds=none,Filters=none)))
}