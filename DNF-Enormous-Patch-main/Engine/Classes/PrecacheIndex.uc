/*******************************************************************************
 * PrecacheIndex generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class PrecacheIndex extends Object
    native;

struct AttenuationMapInfo
{
    var() Texture Texture;
    var() bool bBoxMode;
};

struct BumpMapInfo
{
    var() Texture NormalMap;
    var() Texture HeightMap;
    var() Texture SpecularMap;
    var() float BumpScale;
    var() float SpecularScale;
    var() bool bInvertBumps;
    var() bool bEMBM;
};

struct AnimationControllerInfo
{
    var() class<AnimationControllerEx> Controller;
    var() array<Mesh> Meshes;
};

struct SMapInfo
{
    var() name Map;
    var() array<string> Weapons;
    var() bool bIsMP;
    var() bool bPlayerCanBeShrunk;
};

var() array<StaticMesh> StaticMeshes;
var() array<Mesh> Meshes;
var() array<Texture> Textures;
var() array<AttenuationMapInfo> AttenuationMaps;
var() array<BumpMapInfo> BumpMaps;
var() array<Cubemap> CubeMaps;
var() array<Sound> Sounds;
var() array<string> Music;
var() array< class<DamageType> > DamageTypes;
var() array< class<Material> > MaterialClasses;
var() array<Object.EFootstepCategory> FootstepCategories;
var Level Level;
var bool bIsMP;
var bool bPlayerCanBeShrunk;
var string MapName;
var array< class<Actor> > ActorClasses;
var array<MaterialEx> Materials;
var array<name> PawnAnimations;
var array<AnimationControllerInfo> AnimationControllers;
var array<string> AnimationResources;
var array< class<Weapon> > WeaponClasses;
var array<Object> ProcessedObjects;
var class<Actor> CorpseClass;
var array<SMapInfo> MapInfo;

// Export UPrecacheIndex::execRegisterActorClass(FFrame&, void* const)
native(1266) final function RegisterActorClass(class<Actor> ActorClass);

// Export UPrecacheIndex::execRegisterRenderObject(FFrame&, void* const)
native(1267) final function RegisterRenderObject(Primitive RenderObject, optional Actor Owner);

// Export UPrecacheIndex::execRegisterMountedActorPrefab(FFrame&, void* const)
native(1268) final function RegisterMountedActorPrefab(SMountedActorPrefab MountedActorPrefab);

// Export UPrecacheIndex::execRegisterMaterialEx(FFrame&, void* const)
native(1269) final function RegisterMaterialEx(MaterialEx MaterialEx);

// Export UPrecacheIndex::execRegisterTexture(FFrame&, void* const)
native(1270) final function RegisterTexture(Texture Texture);

// Export UPrecacheIndex::execRegisterAttenuationMap(FFrame&, void* const)
native(1271) final function RegisterAttenuationMap(Texture Texture, bool bBoxMode);

// Export UPrecacheIndex::execRegisterBumpMap(FFrame&, void* const)
native(1272) final function RegisterBumpMap(Texture NormalMap, Texture HeightMap, Texture SpecularMap, float BumpScale, float SpecularScale, optional bool bInvertBumps, optional bool bEMBM);

// Export UPrecacheIndex::execRegisterCubeMap(FFrame&, void* const)
native(1273) final function RegisterCubeMap(Cubemap Cubemap);

// Export UPrecacheIndex::execRegisterSound(FFrame&, void* const)
native(1274) final function RegisterSound(Sound Sound);

// Export UPrecacheIndex::execRegisterAmbientSoundInfo(FFrame&, void* const)
native(1275) final function RegisterAmbientSoundInfo(SAmbientSoundInfo SoundInfo);

// Export UPrecacheIndex::execRegisterSoundInfo(FFrame&, void* const)
native(1276) final function RegisterSoundInfo(SSoundInfo SoundInfo);

// Export UPrecacheIndex::execRegisterVoicePackEntry(FFrame&, void* const)
native(1277) final function RegisterVoicePackEntry(class<CharacterVoicePack> VoicePack, name EntryName);

// Export UPrecacheIndex::execRegisterMusic(FFrame&, void* const)
native(1278) final function RegisterMusic(string Music);

// Export UPrecacheIndex::execRegisterDamageType(FFrame&, void* const)
native(1279) final function RegisterDamageType(class<DamageType> DamageType);

// Export UPrecacheIndex::execRegisterMaterialClass(FFrame&, void* const)
native(1280) final function RegisterMaterialClass(class<Material> MaterialClass);

// Export UPrecacheIndex::execRegisterPawnAnimation(FFrame&, void* const)
native(1281) final function RegisterPawnAnimation(name AnimationName);

// Export UPrecacheIndex::execRegisterAnimationController(FFrame&, void* const)
native(1282) final function RegisterAnimationController(class<AnimationControllerEx> AnimationController, Mesh AssociatedMesh);

// Export UPrecacheIndex::execRegisterAnimationControllerEntry(FFrame&, void* const)
native(1283) final function RegisterAnimationControllerEntry(name EntryName, class<AnimationControllerEx> AnimationController, Mesh AssociatedMesh);

// Export UPrecacheIndex::execRegisterAnimation(FFrame&, void* const)
native(1284) final function RegisterAnimation(Mesh Mesh, name AnimationName);

// Export UPrecacheIndex::execWeaponIsUsableByPlayer(FFrame&, void* const)
native(1285) final function bool WeaponIsUsableByPlayer(Weapon Weapon);

// Export UPrecacheIndex::execWeaponClassIsUsableByPlayer(FFrame&, void* const)
native(1286) final function bool WeaponClassIsUsableByPlayer(class<Weapon> WeaponClass);

// Export UPrecacheIndex::execMapHasCoverType(FFrame&, void* const)
native(1287) final function bool MapHasCoverType(ActionPoint.ECoverType CoverType);

// Export UPrecacheIndex::execLogWarning(FFrame&, void* const)
native(1288) final function LogWarning(coerce string Message);

defaultproperties
{
    CorpseClass='Corpse'
    MapInfo(0)=(Map=Map00,Weapons=("dnGame.MightyFoot","dnGame.Devastator"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(1)=(Map=Map01,Weapons=("dnGame.MightyFoot","dnGame.FortyOunceBeer","dnGame.DrinkCan"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(2)=(Map=map02,Weapons=("dnGame.MightyFoot","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.ATLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.EnergyCell"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(3)=(Map=Map03,Weapons=("dnGame.MightyFoot","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.ATLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(4)=(Map=Map04,Weapons=("dnGame.MightyFoot","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.ATLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(5)=(Map=Map04B,Weapons=("dnGame.MightyFoot","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.ATLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(6)=(Map=Map04C,Weapons=("dnGame.MightyFoot","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.ATLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(7)=(Map=Map05,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Pistol_Gold","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Shotgun","dnGame.MachineGun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(8)=(Map=Map06,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(9)=(Map=Map06B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnDecorations.Battery"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(10)=(Map=Map07,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(11)=(Map=Map07B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(12)=(Map=Map08,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(13)=(Map=Map09,Weapons=("dnGame.MightyFoot","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(14)=(Map=Map10,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(15)=(Map=Map11,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.Cigar"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(16)=(Map=Map11B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(17)=(Map=Map11C,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(18)=(Map=Map12,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(19)=(Map=Map12B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","dnDecorations.GasCan"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(20)=(Map=Map13,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","dnDecorations.GasCan"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(21)=(Map=Map14,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(22)=(Map=Map14B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","dnDecorations.GasCan"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(23)=(Map=Map15,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(24)=(Map=Map16,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(25)=(Map=Map16B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(26)=(Map=Map17,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(27)=(Map=Map17B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(28)=(Map=Map18,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(29)=(Map=Map19,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(30)=(Map=Map19B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(31)=(Map=Map20,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","dnGame.Cigar"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(32)=(Map=Map20B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(33)=(Map=Map21,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(34)=(Map=Map21B,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(35)=(Map=Map22,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.RPG","dnGame.Devastator","dnGame.EnforcerGun","dnGame.ATCaptainLaser"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(36)=(Map=Map23,Weapons=("dnGame.MightyFoot"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(37)=(Map=DM-BuckeyeBurger,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(38)=(Map=DM-Casino,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(39)=(Map=DM-Construction,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(40)=(Map=DM-HighwayNoon,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(41)=(Map=DM-Hive,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(42)=(Map=DM-Hollywood,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(43)=(Map=DM-HooverDamned,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(44)=(Map=DM-Industrial,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(45)=(Map=DM-MorningWood,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(46)=(Map=DM-VegasRuins,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(47)=(Map=Map_changeroom,Weapons=none,bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(48)=(Map=Map_mydigs,Weapons=("dnGame.MightyFoot","dnGame.FortyOunceBeer","dnGame.Cigar"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(49)=(Map=DLC01_DM-Forts,Weapons=("DLC01_Game.MP_Minigun"),bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(50)=(Map=DLC01_DM-Hell,Weapons=("DLC01_Game.MP_BFG"),bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(51)=(Map=DLC01_DM-Sand,Weapons=("DLC01_Game.MP_StickyBomb"),bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(52)=(Map=DLC01_DM-Town,Weapons=("DLC01_Game.MP_GrenadeLauncher"),bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(53)=(Map=DLC03_Map00,Weapons=("dnGame.MightyFoot","dnGame.Pistol","dnGame.Pistol_Gold"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(54)=(Map=DLC03_Map04,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(55)=(Map=DLC03_Map05,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","dnGame.HoloDuke","DLC03_Game.HotSauce"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(56)=(Map=DLC03_Map06,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(57)=(Map=DLC03_Map07,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.ShrinkRay","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(58)=(Map=DLC03_Map10,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Devastator","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(59)=(Map=DLC03_Map11,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.RPG","dnGame.Devastator","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(60)=(Map=DLC03_Map12,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(61)=(Map=DLC03_Map13,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","DLC03_Game.HotSauce"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(62)=(Map=DLC03_Map01,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(63)=(Map=DLC03_Map02,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(64)=(Map=DLC03_Map03,Weapons=("dnGame.MightyFoot","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","dnDecorations.GasCan","DLC03_Decorations.GasCan2"),bIsMP=false,bPlayerCanBeShrunk=true)
    MapInfo(65)=(Map=DLC03_Map14,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(66)=(Map=DLC03_Map15,Weapons=("dnGame.MightyFoot","dnGame.PipeBomb","dnGame.Detonator","dnGame.TripMine","dnGame.Pistol","dnGame.Pistol_Gold","dnGame.Shotgun","dnGame.MachineGun","dnGame.Railgun","dnGame.RPG","dnGame.Devastator","dnGame.FreezeRay","dnGame.ShrinkRay","dnGame.EnforcerGun","dnGame.ATLaser","dnGame.ATCaptainLaser","DLC03_Game.Expander","DLC03_Game.PregnatorGun","dnGame.Steroids","dnGame.FortyOunceBeer","dnGame.HoloDuke","DLC03_Vehicles.MoonBuggy_PowerCell"),bIsMP=false,bPlayerCanBeShrunk=false)
    MapInfo(67)=(Map=DLC03_DM-Biohazard,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(68)=(Map=DLC03_DM-Command,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(69)=(Map=DLC03_DM-Dropzone,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
    MapInfo(70)=(Map=DLC03_DM-Rooftops,Weapons=none,bIsMP=true,bPlayerCanBeShrunk=false)
}