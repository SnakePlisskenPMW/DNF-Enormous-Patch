/*******************************************************************************
 * SlicingDamage generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SlicingDamage extends MeleeDamage
    abstract;

defaultproperties
{
    DeathMessage="<?int?dnGame.SlicingDamage.DeathMessage?>"
    SuicideDeathMessage="<?int?dnGame.SlicingDamage.SuicideDeathMessage?>"
    DamageVibrations(0)=(bNoLerp=false,bToggleSign=true,Style=2,Function=1,FalloffActor=none,FalloffDistance=0,ShakeDuration=0.4,ShakeFrequency=0.08,ShakeMagnitude=1000,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=MeleeDamage_Shake)
    DamageVibrations(1)=(bNoLerp=false,bToggleSign=true,Style=2,Function=1,FalloffActor=none,FalloffDistance=0,ShakeDuration=0.4,ShakeFrequency=0.08,ShakeMagnitude=1000,ShakeFullMagnitude=0,ShakeFullMagnitudeTime=0,ShakeName=MeleeDamage_Shake)
}