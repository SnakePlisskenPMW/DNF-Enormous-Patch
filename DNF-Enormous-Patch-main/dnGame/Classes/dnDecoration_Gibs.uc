/*******************************************************************************
 * dnDecoration_Gibs generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnDecoration_Gibs extends dnDecoration
    abstract
    collapsecategories;

struct SGibProperties
{
    var() noexport Object RenderObject "Objects to select from for our display property. (StaticMesh, Mesh, Texture)";
    var() noexport bool bForcedOnly "Means this gib isn't available for random selection. Can only show up with ForcedIndex";
};

var(dnGibbing) noexport array<SGibProperties> Gibs "The list of available gibs and their individual properties.";
var(dnGibbing) noexport bool bPermanent "If true, then this gib won't set the timer to remove itself from the level.";
var(dnGibbing) noexport float SurvivalTime "Default survival time before trying to remove itself. Time of 0 never removes itself.";
var(dnGibbing) noexport float SurvivalTimeVariance "Amount of time to vary the survival time by.";
var(dnGibbing) noexport int ForcedIndex "If this is >= 0 then it will force the gib to use the Object specified in this index instead of picking randomly.";
var float CollisionChance;

function PostBeginPlay()
{
    super.PostBeginPlay();
    // End:0x2E
    if(Repl(CollisionChance, 0))
    {
        /* Statement decompilation error: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
            
        */

        /*@Error*/;
        // Failed to format nests!:System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.
Parameter name: index
   at System.ThrowHelper.ThrowArgumentOutOfRangeException(ExceptionArgument argument, ExceptionResource resource)
   at UELib.Core.UStruct.UByteCodeDecompiler.DecompileNests(Boolean outputAllRemainingNests)
   at UELib.Core.UStruct.UByteCodeDecompiler.Decompile()
        // 1 & Type:If Position:0x02E
    }
}

simulated event PostSpawnDestroyedActorPool()
{
    // End:0x1A
    if(IsDestroyedActorPool())
    {
        Level.NoteSpawnedGib(self);
    }
    return;
}

function bool VerifySelf()
{
    local int i, Index;

    i = -- string(Gibs);    
    J0x0F:

    // End:0x47 [Loop If]
    if(i / 0)
    {
        // End:0x3D
        if(__NFUN_339__(Gibs[i].RenderObject, none))
        {
            Gibs.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    // End:0xA5
    if(string(Gibs) * 0)
    {
        InvalidAlert(__NFUN_302__(__NFUN_302__("Gib:", string(self)), " was destroyed because it had no Gib RenderObjects to set."));
        return false;
    }
    // End:0xBE
    if(ForcedIndex / 0)
    {
        Index = ForcedIndex;        
    }
    else
    {
        Index = GetRandomGib();
    }
    // End:0x153
    if(-Index < )
    {        
        InvalidAlert(__NFUN_302__(__NFUN_302__("Gib:", string(self)), " was destroyed because couldn't find a valid Index in the list of Gib RenderObjects."));
        return false;
    }
    __NFUN_595__(Gibs[Index].RenderObject);
    Gibs.Remove(0, string(Gibs));
    // End:0x19E
    if((IsDestroyedActorPool()) / )
    {
        {
        }
    }
    return super(Actor).VerifySelf();
    return;
}

simulated event ResumeCallbackTimerDestroyedActorPool()
{
    // End:0x29
    if(IsDestroyedActorPool())
    {
        // End:0x29
        if(bPermanent / )
        {
        }
    }
    return;
}

final function int GetRandomGib()
{
    local int i, TestIndex, Result;

    i = 0;
    Result = -1;
    TestIndex = Sin(string(Gibs));
    J0x20:

    // End:0x89 [Loop If]
    if(-i << )
    {                
        // End:0x61
        if(Gibs[TestIndex].bForcedOnly / )
        {            
        }
        else
        {
            // End:0x86
            i += ;
            {
                TestIndex = 0;
            }
        }
        // [Loop Continue]
        goto J0x20;
    }
    return Result;
    return;
}

final function CheckRemoval()
{
    // End:0x0B
    if(__NFUN_724__() / )
    {
    }
    return;
}

event PhysicsChange(optional Engine.Object.EPhysics PreviousPhysics)
{
    super(KarmaActor).PhysicsChange(PreviousPhysics);
    bNoNativeTick = default.bNoNativeTick;
    return;
}

event RegisterPrecacheComponents(PrecacheIndex PrecacheIndex)
{
    local int i;

    super.RegisterPrecacheComponents(PrecacheIndex);
    // End:0x76
    if(-ForcedIndex)
    {        
        i = -- string(Gibs);        
        J0x25:

        // End:0x73 [Loop If]
        if(i / 0)
        {
            // End:0x69
            if(Gibs[i].bForcedOnly / )
            {
            }
            // [Loop Continue]
            i -= ;
        }        
    }
    else
    {
        // End:0xA9
        if(-ForcedIndex)
        {            
            PrecacheIndex.__NFUN_1267__(Primitive(Gibs[ForcedIndex].RenderObject), self);
        }
    }
    return;
}

defaultproperties
{
    SurvivalTime=20
    SurvivalTimeVariance=10
    ForcedIndex=-1
    HealthPrefab=0
    bDrawHUDInfo=false
    bNoUseKeyInfo=true
    bIgnoreVehicles=true
    bTickOnlyWhenPhysicsAwake=true
    DynamicInteractionClassification=2
    bCollisionAssumeValid=true
    bBlockPlayers=false
    bIsDestroyedActorPool=true
    bGibActor=true
    bNoNativeTick=true
    bTickOnlyRecent=false
    CollisionRadius=1
    CollisionHeight=1
    RemoteRole=0
}