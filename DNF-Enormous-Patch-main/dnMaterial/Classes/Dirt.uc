/*******************************************************************************
 * Dirt generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Dirt extends dnMaterial_Nature;

defaultproperties
{
	FootstepCategoryEffect=(InfoIndex=0,bEffectCrouched=false,Footprints='dnParticles.FootPrint_Sand',Footprints[1]='dnParticles.FootPrint_Blood',Footprints[2]='dnParticles.FOOTPRINT_Wet',Footprints[3]='dnParticles.FootPrint_Mud',Footprints[4]='dnParticles.FOOTPRINT_Flaming',Footprints[5]='dnParticles.FOOTPRINT_Radioactive',SoundInfo=bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=/* Array type was not detected. */,
/* Exception thrown while deserializing SoundInfo
System.ArgumentOutOfRangeException: Non-negative number required.
Parameter name: value
   at System.IO.MemoryStream.set_Position(Int64 value)
   at UELib.Core.UDefaultProperty.Deserialize() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 184
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 767 */,FadeOutDuration=0,FadeInEndCallback=None,FadeOutEndCallback=None)
	LandedCategoryEffect=(InfoIndex=0,SoundInfo=(bAllowRepeats=false,bPlayAsAmbient=false,MixerGroupOverride=None,SimpleSingleSound=none,Sounds=/* Array type was not detected. */,Footprints=(VolumePrefab=0,Slots=/* Array type was not detected. */),Volume=0.8,VolumeVariance=0,InnerRadius=128,InnerRadiusVariance=0,Radius=640,RadiusVariance=0,Pitch=0,PitchVariance=0,Flags=(bNoOverride=false,bMenuSound=false,bNoFilter=false,bNoOcclude=false,bNoAIHear=false,bNoScale=false,bSpoken=false,bPlayThroughListener=false,bNoDoppler=false,bDialogSound=false,bNoReverb=false,bEnableVis=false,bSkipFlangePrevention=false,bSkipSoundRadiusTest=false,bIgnoreTimeDilation=false),SoundLocationOverride=(bMakeRelativeForLocalPlayer=false,bMakeAbsoluteForActor=false,OverrideType=0,Location3D=(X=1.291857E-41,Y=2.862294E-17,Z=0),Z=0),Velocity3D=(X=1.291857E-41,Y=2.862294E-17,Z=0),Z=0))
	PhysicsMaterial='dnPhysicsMaterial_Dirt'
}