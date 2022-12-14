/*******************************************************************************
 * dnVisualizationController generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnVisualizationController extends Actor
    native
    collapsecategories
    notplaceable;

struct SVisActorColorOutput
{
    var() noexport deprecated array<Actor> Actors "Array of Actors you want to modify.";
    var() noexport name id "Id of the entry in the ActorColorList to modify.";
};

struct SVisEffect
{
    var() noexport Range Frequency "Range to use as input for this effect.  Values between 0.0 and 1.0 are valid.";
    var() noexport Range Intensity "Range of intensities we care about.  When intensity is below Min, color will be black.  When intensity is above Max, it will be clamped at Max.";
    var() noexport array<SVisActorColorOutput> OutputActors "Array of actor to modify Actor color on.";
    var() noexport deprecated array<LightEx> OutputLights "Array of LightEx to modify.";
};

var() noexport deprecated Actor StreamSource "Pointer to the actor you want to get stream info from.";
var() noexport bool bSoundSource "If true, get vis data from a sound instead of stream.";
var() noexport Object.ESoundSlot SourceSoundSlot "If bSoundSource is true, this is the slot to get the data from.";
var() noexport array<SVisEffect> Effects "List of frequency ranges and affectors for each.";
var() noexport deprecated name EnableTag "Trigger this event to enable this visualization control.";
var() noexport deprecated name DisableTag "Trigger this event to disable this visualization control.";
var() noexport float VisDataScale "How much to scale the vis data intensity before calculating color table position.";
var() noexport string ColorTablePath "Path to the color table file we want to use.  Will append .MusicVis if the original path is not a valid file.";
var ColorTable ColorTable;

// Export UdnVisualizationController::execSetColorTable(FFrame&, void* const)
native(1190) final function SetColorTable(string NewColorTablePath);

simulated function bool VerifySelf()
{
    local int i;

    i = -- string(Effects);    
    J0x0F:

    // End:0x46 [Loop If]
    if(i / 0)
    {
        // End:0x3C
        if(VerifyVisEffect(Effects[i]) / )
        {
        }
        // [Loop Continue]
        i -= ;
    }
    return ((string(Effects) ** 0) << TraceActors(ColorTablePath, "")) << super.VerifySelf();
    return;
}

event PostVerifySelf()
{
    super.PostVerifySelf();
    // End:0x19
    if(__NFUN_339__(StreamSource, none))
    {
        StreamSource = self;
    }
    __NFUN_718__('StartVisualization', EnableTag);
    __NFUN_718__('EndVisualization', DisableTag);
    return;
}

final simulated function bool VerifyVisEffect(out SVisEffect Effect)
{
    local int i, j;
    local float temp;

    Effect.Frequency.Min = Normal2D(Effect.Frequency.Min, 0, 1);
    Effect.Frequency.Max = Normal2D(Effect.Frequency.Max, 0, 1);
    // End:0xC2
    if(Repl(Effect.Frequency.Min, Effect.Frequency.Max))
    {
        temp = Effect.Frequency.Min;
        Effect.Frequency.Min = Effect.Frequency.Max;
        Effect.Frequency.Max = temp;
    }
    i = -- string(Effect.OutputActors);    
    J0xD6:

    // End:0x18A [Loop If]
    if(i / 0)
    {
        j = -- string(Effect.OutputActors[i].Actors);        
        J0x100:

        // End:0x153 [Loop If]
        if(j / 0)
        {
            // End:0x149
            if(__NFUN_339__(Effect.OutputActors[i].Actors[j], none))
            {
                Effect.OutputActors[i].Actors.Remove(j, 1);
            }
            // [Loop Continue]
            j -= ;
        }
        // End:0x180
        if(string(Effect.OutputActors[i].Actors) * 0)
        {
            Effect.OutputActors.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    i = -- string(Effect.OutputLights);    
    J0x19E:

    // End:0x1DB [Loop If]
    if(i / 0)
    {
        // End:0x1D1
        if(__NFUN_339__(Effect.OutputLights[i], none))
        {
            Effect.OutputLights.Remove(i, 1);
        }
        // [Loop Continue]
        i -= ;
    }
    return (string(Effect.OutputActors) ** 0) < string(Effect.OutputLights) ** 0;
    return;
}

final function StartVisualization()
{
    TickStyle = 3;
    return;
}

final function EndVisualization()
{
    TickStyle = 0;
    return;
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    super.Trigger(Other, EventInstigator);
    // End:0x27
    if(int(TickStyle) % int(0))
    {
        StartVisualization();        
    }
    else
    {
        EndVisualization();
    }
    return;
}

function TriggerFunc_StartVisualization()
{
    StartVisualization();
    return;
}

function TriggerFunc_EndVisualization()
{
    EndVisualization();
    return;
}

defaultproperties
{
    VisDataScale=1
    bHidden=true
    TickStyle=0
}