/*******************************************************************************
 * Veh_Lift generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Veh_Lift extends Veh_TankTemplate
	collapsecategories
	dependson(Lift_VehicleSpace_Driver)
	dependson(LiftSpecialPart_Platform)
	dependson(LiftSpecialPart_AttachNode)
	dependson(LiftSpecialPart_SideControl);

const UP_ANGLE = 8192.0f;
const DOWN_ANGLE = 1024.0f;

enum ELiftState
{
	LIFT_Top,
	LIFT_Mid,
	LIFT_Bot
};

var() SMountPrefab MainControlsMountPrefab;
var() noexport float MaxHeightPct "0.0-1.0 height scale. 1.0 = maximum height, 0.5 = 50% height, etc";
var() noexport float StartingHeightPct "What pct of the MaxHeightPct to start off at. ";
var() noexport float RaiseRate "How long, in seconds, to raise to the top";
var LiftSpecialPart_Platform Platform;
var LiftSpecialPart_AttachNode AttachNode;
var Lift_VehicleSpace_Driver MainControls;
var LiftSpecialPart_SideControl SideControls;
var array<VehicleSpecialPartBase> SupportParts;
var Veh_Lift.ELiftState LiftState;
var bool ResetTick;
var float LiftDirection;
var KAngularJointLimit Limit;

event PostBeginPlay()
{
	super(VehicleBase).PostBeginPlay();
	Platform = LiftSpecialPart_Platform(FindMountedActor(, class'LiftSpecialPart_Platform'));
	__NFUN_354__(__NFUN_340__(Platform, none));
	MainControls = Lift_VehicleSpace_Driver(FindMountedActor(, class'Lift_VehicleSpace_Driver'));
	__NFUN_354__(__NFUN_340__(MainControls, none));
	SideControls = LiftSpecialPart_SideControl(FindMountedActor(, class'LiftSpecialPart_SideControl'));
	__NFUN_354__(__NFUN_340__(SideControls, none));
	AttachNode = LiftSpecialPart_AttachNode(FindMountedActor(, class'LiftSpecialPart_AttachNode'));
	__NFUN_354__(__NFUN_340__(AttachNode, none));
	ViewActor = MainControls;
	// End:0xD1
	if(__NFUN_341__(PhysicsEntityGroup, 'None'))
	{
		__NFUN_816__(__NFUN_343__(__NFUN_302__(string(Name), "_PhysicsEntityGroup")));
	}
	MainControls.__NFUN_633__(MainControlsMountPrefab, Platform);
	InitSupportBeams();
	PhysicsEntityGroupChanged();
	return;
}

event PhysicsEntityGroupChanged()
{
	local int i;

	super(KarmaActor).PhysicsEntityGroupChanged();
	// End:0x24
	if(__NFUN_340__(Platform, none))
	{
		Platform.__NFUN_816__(PhysicsEntityGroup);
	}
	// End:0x42
	if(__NFUN_340__(MainControls, none))
	{
		MainControls.__NFUN_816__(PhysicsEntityGroup);
	}
	// End:0x60
	if(__NFUN_340__(SideControls, none))
	{
		SideControls.__NFUN_816__(PhysicsEntityGroup);
	}
	i = 0;
	J0x67:

	// End:0xAB [Loop If]
	if(__NFUN_169__(i, string(SupportParts)))
	{
		// End:0xA1
		if(__NFUN_340__(SupportParts[i], none))
		{
			SupportParts[i].__NFUN_816__(PhysicsEntityGroup);
		}
		__NFUN_184__(i);
		// [Loop Continue]
		goto J0x67;
	}
	return;
}

final function InitSupportBeams()
{
	local SDesiredRotationAxis DesiredRot;
	local SMountPrefab MountPrefab;
	local name FinishRaiseEvent, FinishLowerEvent;
	local int i;
	local Rotator R;
	local float TimeTotal;
	local Vector Delta, PlatformRate;

	FinishRaiseEvent = __NFUN_343__(__NFUN_302__(string(self), "_FinishRaise"));
	FinishLowerEvent = __NFUN_343__(__NFUN_302__(string(self), "_FinishLower"));
	__NFUN_718__('LowerFinished', FinishLowerEvent);
	__NFUN_718__('RaiseFinished', FinishRaiseEvent);
	DesiredRot.Rate = int(RaiseRate);
	DesiredRot.Style = 5;
	SupportParts[0] = VehicleSpecialPartBase(FindMountedActor('BOT_IN'));
	SupportParts[1] = VehicleSpecialPartBase(FindMountedActor('BOT_OUT'));
	SupportParts[2] = VehicleSpecialPartBase(FindMountedActor('MID_IN'));
	SupportParts[3] = VehicleSpecialPartBase(FindMountedActor('MID_OUT'));
	SupportParts[4] = VehicleSpecialPartBase(FindMountedActor('TOP_IN'));
	SupportParts[5] = VehicleSpecialPartBase(FindMountedActor('TOP_OUT'));
	MountPrefab.MountOrigin = __NFUN_232__(125, 0, 0);
	MountPrefab.MountAngles.Pitch = int(__NFUN_194__(1024));
	MountPrefab.bSurviveDismount = true;
	AttachNode.__NFUN_633__(MountPrefab, SupportParts[5]);
	i = __NFUN_166__(string(SupportParts), 1);
	J0x16E:

	// End:0x35C [Loop If]
	if(__NFUN_172__(i, 0))
	{
		SupportParts[i].DesiredRotationPitch[0] = DesiredRot;
		SupportParts[i].DesiredRotationPitch[1] = DesiredRot;
		SupportParts[i].DesiredRotationPitch[0].Target = int(1024);
		// End:0x209
		if(__NFUN_173__(__NFUN_164__(i, 2), 0))
		{
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[0].Target, float(-1));
		}
		// End:0x258
		if(__NFUN_170__(i, 1))
		{
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[0].Target, float(2));
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[0].Rate, 2);
		}
		SupportParts[i].DesiredRotationPitch[1].Target = int(__NFUN_195__(8192, MaxHeightPct));
		// End:0x2B5
		if(__NFUN_173__(__NFUN_164__(i, 2), 0))
		{
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[1].Target, float(-1));
		}
		// End:0x304
		if(__NFUN_170__(i, 1))
		{
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[1].Rate, float(2));
			__NFUN_178__(SupportParts[i].DesiredRotationPitch[1].Target, 2);
		}
		// End:0x352
		if(__NFUN_201__(StartingHeightPct, 0))
		{
			SupportParts[i].__NFUN_665__(int(__NFUN_195__(float(SupportParts[i].DesiredRotationPitch[1].Target), StartingHeightPct)), 0, 0);
		}
		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x16E;
	}
	SupportParts[2].__NFUN_635__(SupportParts[1], false, false, true);
	SupportParts[3].__NFUN_635__(SupportParts[0], false, false, true);
	SupportParts[4].__NFUN_635__(SupportParts[3], false, false, true);
	SupportParts[5].__NFUN_635__(SupportParts[2], false, false, true);
	Platform.__NFUN_635__(AttachNode, false, false, true);
	AttachNode.DesiredRotationPitch[0] = DesiredRot;
	AttachNode.DesiredRotationPitch[1] = DesiredRot;
	AttachNode.DesiredRotationPitch[2] = DesiredRot;
	AttachNode.DesiredRotationPitch[0].Target = int(__NFUN_194__(1024));
	AttachNode.DesiredRotationPitch[1].Target = int(__NFUN_195__(8192, __NFUN_194__(MaxHeightPct)));
	AttachNode.DesiredRotationPitch[0].Event = FinishLowerEvent;
	AttachNode.DesiredRotationPitch[1].Event = FinishRaiseEvent;
	// End:0x4F9
	if(__NFUN_201__(StartingHeightPct, 0))
	{
		AttachNode.__NFUN_665__(int(__NFUN_195__(float(AttachNode.DesiredRotationPitch[1].Target), StartingHeightPct)), 0, 0,,,,, FinishRaiseEvent);
		ResetTick = true;
		SetTick(1);
	}
	Delta = __NFUN_239__(Platform.DesiredLocation[1].Target, Platform.DesiredLocation[0].Target);
	TimeTotal = __NFUN_196__(float(__NFUN_166__(AttachNode.DesiredRotationPitch[1].Target, AttachNode.DesiredRotationPitch[0].Target)), float(AttachNode.DesiredRotationPitch[0].Rate));
	PlatformRate = __NFUN_237__(Delta, TimeTotal);
	Platform.DesiredLocation[0].Rate = PlatformRate;
	Platform.DesiredLocation[1].Rate = PlatformRate;
	return;
}

final function RaiseLift()
{
	local int i;

	// End:0x10
	if(__NFUN_173__(int(LiftState), int(0)))
	{
		return;
	}
	FindAndPlaySound('Fork_MoveUp', 1);
	LiftState = 1;
	AttachNode.__NFUN_656__(1, false);
	Platform.__NFUN_646__(1);
	i = __NFUN_166__(string(SupportParts), 1);
	J0x51:

	// End:0x7B [Loop If]
	if(__NFUN_172__(i, 0))
	{
		SupportParts[i].__NFUN_656__(1, false);
		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x51;
	}
	LiftDirection = 1;
	return;
}

final function LowerLift()
{
	local int i;

	// End:0x10
	if(__NFUN_173__(int(LiftState), int(2)))
	{
		return;
	}
	FindAndPlaySound('Fork_MoveDown', 1);
	LiftState = 1;
	AttachNode.__NFUN_656__(0, false);
	Platform.__NFUN_646__(0);
	i = __NFUN_166__(string(SupportParts), 1);
	J0x51:

	// End:0x7B [Loop If]
	if(__NFUN_172__(i, 0))
	{
		SupportParts[i].__NFUN_656__(0, false);
		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x51;
	}
	LiftDirection = -1;
	return;
}

final function StopLift()
{
	local int i;

	// End:0x10
	if(__NFUN_174__(int(LiftState), int(1)))
	{
		return;
	}
	FindAndStopSound('Fork_MoveDown');
	FindAndStopSound('Fork_MoveUp', 3);
	AttachNode.__NFUN_660__();
	Platform.__NFUN_648__();
	i = __NFUN_166__(string(SupportParts), 1);
	J0x51:

	// End:0x79 [Loop If]
	if(__NFUN_172__(i, 0))
	{
		SupportParts[i].__NFUN_660__();
		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x51;
	}
	LiftDirection = 0;
	return;
}

final function SetTick(Engine.Object.ETickStyle NewTickStyle)
{
	local int i;

	TickStyle = NewTickStyle;
	AttachNode.TickStyle = NewTickStyle;
	i = __NFUN_166__(string(SupportParts), 1);
	J0x2F:

	// End:0x5F [Loop If]
	if(__NFUN_172__(i, 0))
	{
		SupportParts[i].TickStyle = NewTickStyle;
		__NFUN_185__(i);
		// [Loop Continue]
		goto J0x2F;
	}
	return;
}

final function float GetCurrentHeightPCT()
{
	return __NFUN_196__(float(__NFUN_166__(SupportParts[0].Rotation.Pitch, SupportParts[0].DesiredRotationPitch[0].Target)), float(__NFUN_166__(SupportParts[0].DesiredRotationPitch[1].Target, SupportParts[0].DesiredRotationPitch[0].Target)));
	return;
}

simulated function EnablePlatformMagnet()
{
	Platform.TriggerFunc_Enable();
	Platform.TriggerFunc_ForceReattach();
	Platform.__NFUN_817__();
	return;
}

simulated event DriverLeft(VehicleSpaceBase Space)
{
	super(Vehicle_MeqonWheeled).DriverLeft(Space);
	// End:0x24
	if(__NFUN_145__(bIsMoving))
	{
		__NFUN_607__(0.25, false, 'DisablePlatformMagnet');
	}
	return;
}

final function DisablePlatformMagnet()
{
	Platform.TriggerFunc_Detach();
	Platform.TriggerFunc_Disable();
	return;
}

simulated function HandleTankStoppedMoving()
{
	super.HandleTankStoppedMoving();
	// End:0x22
	if(__NFUN_339__(MainControls.User, none))
	{
		DisablePlatformMagnet();
	}
	return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
	super(dnDecoration).Trigger(Other, EventInstigator);
	RaiseLift();
	return;
}

final function TriggerFunc_Lower()
{
	LowerLift();
	return;
}

final function TriggerFunc_LowerFinished()
{
	LiftState = 2;
	FindAndPlaySound('Fork_HitBottom', 1);
	FindAndStopSound('Fork_MoveDown');
	LiftDirection = 0;
	return;
}

final function TriggerFunc_RaiseFinished()
{
	local float Height;

	Height = GetCurrentHeightPCT();
	// End:0x2D
	if(__NFUN_202__(__NFUN_199__(1, Height), 0.001))
	{
		LiftState = 0;		
	}
	else
	{
		LiftState = 1;
	}
	FindAndStopSound('Fork_MoveUp', 3);
	FindAndPlaySound('Fork_HitBottom', 1);
	LiftDirection = 0;
	// End:0x6B
	if(ResetTick)
	{
		SetTick(2);
	}
	return;
}

function KarmaSetConstraintProperties(KConstraint Constraint)
{
	super(KarmaActor).KarmaSetConstraintProperties(Constraint);
	// End:0x42
	if(__NFUN_339__(Limit, none))
	{
		Limit = KAngularJointLimit(Constraint);
		// End:0x42
		if(__NFUN_340__(Limit, none))
		{
			Limit.__NFUN_1106__(100);
		}
	}
	return;
}

event PhysicsChange(optional Engine.Object.EPhysics PreviousPhysics)
{
	super(KarmaActor).PhysicsChange(PreviousPhysics);
	// End:0x46
	if(__NFUN_340__(Limit, none))
	{
		// End:0x37
		if(__NFUN_173__(int(Physics), int(18)))
		{
			Limit.__NFUN_642__(18);			
		}
		else
		{
			Limit.__NFUN_642__(0);
		}
	}
	return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
	super.RegisterPrecacheComponents(PrecacheIndex);
	PrecacheIndex.__NFUN_1277__(VoicePack, 'Fork_MoveUp');
	PrecacheIndex.__NFUN_1277__(VoicePack, 'Fork_MoveDown');
	PrecacheIndex.__NFUN_1277__(VoicePack, 'Fork_HitBottom');
	return;
}

defaultproperties
{
	MainControlsMountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.075528E+08,Y=2.802873E-17,Z=0),Z=29.5)
	MaxHeightPct=1
	RaiseRate=2200
	LiftState=2
	RightTread=(WheelInfo=(WheelOffset=(X=1.291997E-41,Y=2.802872E-17,Z=46),Z=-22),bUseWheelClass=true)
	LeftTread=(WheelInfo=(WheelOffset=(X=1.291997E-41,Y=2.802872E-17,Z=-46),Z=-22),bUseWheelClass=true)
	DriveTurnRatio=-0.25
	TurnSpeedScale=1.5
	GearSounds(0)=(Z=/* Unknown default property type! */,Vector=true,StopOnFootOffRule=3,UpshiftLoopName=UpShiftLoop,DownshiftLoopName=None,FootOffSlowName=FootOffSlow,FootOffFastName=FootOffFast)
	GearSounds(1)=(bStopOnFootOff=true,StopOnFootOffRule=3,UpshiftLoopName=UpShiftLoop,DownshiftLoopName=None,FootOffSlowName=FootOffSlow,FootOffFastName=FootOffFast)
	GearSounds(2)=(SpinRateThreshold=0.4,ForwardVelocityThreshold=200,ViewDist=80,ViewFocusOffset=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=32)
	GearSounds(3)=(VehicleSensorRadius=50,VehicleSensorHeight=38,AutoConstraints=/* Array type was not detected. */,bConstraintDisabledOnDeath=false,bConstraintOnDeath=false,BoneName=None,ConstraintMounting=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=false,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(4)=(MountAngles=(Pitch=1073750534,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(5)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(6)=(MountType=0,DismountPhysics=0)
	GearSounds(7)=(OtherConstraintActor=none,OtherConstraintBone=None,ConstraintClass='Engine.KAngularJointLimit',ConstraintActor=none)
	GearSounds(8)=
/* Exception thrown while deserializing GearSounds
System.ArgumentOutOfRangeException: Non-negative number required.
Parameter name: value
   at System.IO.MemoryStream.set_Position(Int64 value)
   at UELib.Core.UDefaultProperty.Deserialize() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 184
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 767 */
	GearSounds(9)=(Rotator=2,dnVehicles=/* Unknown default property type! */,SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.075528E+08,Y=2.802873E-17,Z=0),Z=29.5),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(10)=(MountAngles=(Pitch=8710,Yaw=571015168,Roll=32768),Roll=0)
	GearSounds(11)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(12)=(MountType=0,DismountPhysics=0)
	GearSounds(13)=(RenderObject=none,DrawScale=0)
	GearSounds(14)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Platform',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=60),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(15)=(MountAngles=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(16)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(17)=(MountType=0,DismountPhysics=0)
	GearSounds(18)=(RenderObject=none,DrawScale=0)
	GearSounds(19)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_SideControl',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.813637E-17,Z=-34),Z=20),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(20)=(MountAngles=(Pitch=8710,Yaw=571015168,Roll=-16384),Roll=0)
	GearSounds(21)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(22)=(MountType=0,DismountPhysics=0)
	GearSounds(23)=(RenderObject=none,DrawScale=0)
	GearSounds(24)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_AttachNode',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.813716E-17,Z=0),Z=20),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(25)=(MountAngles=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(26)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(27)=(MountType=0,DismountPhysics=0)
	GearSounds(28)=(RenderObject=none,DrawScale=0)
	GearSounds(29)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Inner',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=BOT_IN,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.802869E-17,Z=0),Z=-5),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(30)=(MountAngles=(Pitch=-67100154,Yaw=571080703,Roll=0),Roll=0)
	GearSounds(31)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(32)=(MountType=0,DismountPhysics=0)
	GearSounds(33)=(RenderObject=none,DrawScale=0)
	GearSounds(34)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Outer',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=BOT_OUT,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.813711E-17,Z=0),Z=-5),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(35)=(MountAngles=(Pitch=67117574,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(36)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(37)=(MountType=0,DismountPhysics=0)
	GearSounds(38)=(RenderObject=none,DrawScale=0)
	GearSounds(39)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Inner',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=MID_IN,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.802869E-17,Z=0),Z=7),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(40)=(MountAngles=(Pitch=-67100154,Yaw=571080703,Roll=0),Roll=0)
	GearSounds(41)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(42)=(MountType=0,DismountPhysics=0)
	GearSounds(43)=(RenderObject=none,DrawScale=0)
	GearSounds(44)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Outer',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=MID_OUT,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.813711E-17,Z=0),Z=7),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(45)=(MountAngles=(Pitch=67117574,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(46)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(47)=(MountType=0,DismountPhysics=0)
	GearSounds(48)=(RenderObject=none,DrawScale=0)
	GearSounds(49)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Inner',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=TOP_IN,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.802869E-17,Z=0),Z=19),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(50)=(MountAngles=(Pitch=-67100154,Yaw=571080703,Roll=0),Roll=0)
	GearSounds(51)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(52)=(MountType=0,DismountPhysics=0)
	GearSounds(53)=(RenderObject=none,DrawScale=0)
	GearSounds(54)=(bSkipVerifySelf=false,SpawnClass='LiftSpecialPart_Support_Outer',SpawnChance=0,MountPrefab=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=TOP_OUT,ForceEvent=None,MountMeshItem=None,MountOrigin=(X=1.291997E-41,Y=2.813711E-17,Z=0),Z=19),MountOriginVariance=(X=1.291997E-41,Y=2.797242E-17,Z=0),Z=0)
	GearSounds(55)=(MountAngles=(Pitch=67117574,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(56)=(MountAnglesVariance=(Pitch=8710,Yaw=571015168,Roll=0),Roll=0)
	GearSounds(57)=(MountType=0,DismountPhysics=0)
	GearSounds(58)=(RenderObject=none,DrawScale=0)
	GearSounds(59)=(bTickOnlyRecent=false,Mass=2000,DrawType=8,StaticMesh='sm_geo_vehicles.DriveableLift.LiftBase',VoicePack='SoundConfig.Vehicles.VoicePack_Forklift')
	GearSounds(60)=
/* Exception thrown while deserializing GearSounds
System.IO.EndOfStreamException: Unable to read beyond the end of the stream.
   at System.IO.BinaryReader.ReadByte()
   at UELib.UnrealReader.ReadIndex() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\UnrealStream.cs:line 268
   at UELib.UnrealReader.ReadNameIndex(Int32& num) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\UnrealStream.cs:line 327
   at UELib.UObjectStream.ReadNameIndex(Int32& num) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\UnrealStream.cs:line 762
   at UELib.UnrealStreamImplementations.ReadNameReference(IUnrealStream stream) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\UnrealStream.cs:line 837
   at UELib.Core.UDefaultProperty.DeserializeTagUE1() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 204
   at UELib.Core.UDefaultProperty.DeserializeNextTag() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 193
   at UELib.Core.UDefaultProperty.Deserialize() in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 169
   at UELib.Core.UDefaultProperty.DeserializeDefaultPropertyValue(PropertyType type, DeserializeFlags& deserializeFlags) in E:\SteamLibrary\steamapps\common\DukeNukem\Tools\UnrealscriptDecompiler\Core\Classes\UDefaultProperty.cs:line 767 */
}