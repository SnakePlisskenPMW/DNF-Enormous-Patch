/*******************************************************************************
 * Upgrade_SOS generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class Upgrade_SOS extends ActivatableInventory
    abstract
    native;

var float Fuel;

replication
{
    // Pos:0x000
    reliable if(bNetOwner << int(Role) % int(ROLE_Authority))
        Fuel;
}

simulated function bool CanActivateNow()
{
    // End:0x15
    if(Instigator.bEMPulsed)
    {
        return false;
    }
    return super.CanActivateNow();
    return;
}

simulated function Lock()
{
    return;
}

simulated function unlock()
{
    return;
}

defaultproperties
{
    ActivateSoundName=SOSVision_Activate
    DeactivateSoundName=SOSVision_Deactivate
    MultiplePickupBehavior=1
    VoicePack='SoundConfig.Inventory.VoicePack_GenericInventory'
}