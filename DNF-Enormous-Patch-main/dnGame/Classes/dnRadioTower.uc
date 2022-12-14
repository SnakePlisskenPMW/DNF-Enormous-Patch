/*******************************************************************************
 * dnRadioTower generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnRadioTower extends Actor
    native
    collapsecategories
    notplaceable;

cpptext
{
// Stripped
}

struct SRadioEntryDef
{
    var() noexport string Filename "Filename for the mp3.";
    var() noexport array<name> StationIDs "Station IDs that this song can play on.";
};

struct SRadioProgramEntry
{
    var() int MP3Index;
    var() float StartTime;
    var() float EndTime;
};

struct SRadioStationDef
{
    var() editconst float Freq;
    var() editconst localized string Name;
    var() editconst name id;
    var() editconst array<SRadioProgramEntry> Program;
    var() editconst float ProgramTime;
    var() editconst float PauseTime;
    var array<int> SongPool;
    var array<int> CommercialPool;
};

struct SCustomRadioStation
{
    var() noexport float Freq "102.1 or whatever....";
    var() noexport localized string Name "Name of the station.";
    var() noexport array<string> Program "List of filenames for songs/commercials to play.  The order of the list will be the order of the program.";
    var() noexport float PauseTime "Time between each song/commercial.";
};

struct SMP3Data
{
    var() editconst string Filename;
    var() editconst float Duration;
};

var() editconst noexport array<SRadioStationDef> Stations "Global list of radio stations.  Not meant to be used by mappers.";
var() noexport array<SCustomRadioStation> CustomStations "Mapper defined radio stations.  Will override a default station with the same Frequency.";
var() noexport string RadioStatic "MP3 to use for static.";
var() noexport float DefaultPauseTime "Default PauseTime for a radio station.  Will be used if the station's value is 0.0f.";
var bool bInitialized;
var() array<SRadioEntryDef> Songs;
var() array<SRadioEntryDef> Commercials;
var() editconst array<SMP3Data> MP3List;

// Export UdnRadioTower::execInitializeTower(FFrame&, void* const)
native final function InitializeTower();

// Export UdnRadioTower::execSeekNextStation(FFrame&, void* const)
native final function float SeekNextStation(float RadioFreq);

// Export UdnRadioTower::execSeekPrevStation(FFrame&, void* const)
native final function float SeekPrevStation(float RadioFreq);

// Export UdnRadioTower::execTuneStationByFrequency(FFrame&, void* const)
native final function float TuneStationByFrequency(Actor RadioActor, float RadioFreq);

// Export UdnRadioTower::execUntuneStation(FFrame&, void* const)
native final function UntuneStation(Actor RadioActor);

// Export UdnRadioTower::execGetStationName(FFrame&, void* const)
native final function string GetStationName(float RadioFreq);

defaultproperties
{
    Stations(0)=(Freq=95.3,Name="95.3 Ninja Radio",id=Ninja,Program=none,ProgramTime=0,PauseTime=0,SongPool=none,CommercialPool=none)
    Stations(1)=(Freq=106.7,Name="106.7 HiFiNRgR4v3r",id=HiFiNRG,Program=none,ProgramTime=0,PauseTime=0,SongPool=none,CommercialPool=none)
    DefaultPauseTime=0.625
    bHidden=true
    TickStyle=0
}