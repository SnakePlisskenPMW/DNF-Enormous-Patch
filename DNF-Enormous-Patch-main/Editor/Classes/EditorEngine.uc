/*******************************************************************************
 * EditorEngine generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class EditorEngine extends Engine
    transient
    native
    config
    noexport;

var const int NotifyVtbl;
var const Level Level;
var const Model TempModel;
var const MaterialEx CurrentMaterial;
var const Class CurrentClass;
var const StaticMesh CurrentStaticMesh;
var const array<SoftParticleSystem> EditorParticleSystems;
var const TransBuffer Trans;
var const TextBuffer Results;
var const int Pad[9];
var const Texture MenuUp;
var const Texture MenuDn;
var const Texture CollOn;
var const Texture CollOff;
var const Texture PlyrOn;
var const Texture PlyrOff;
var const Texture LiteOn;
var const Texture LiteOff;
var const Texture Bad;
var const Texture Bkgnd;
var const Texture BkgndHi;
var Engine.Object.EPatchEditMode PatchEditMode;
var byte PatchPaintMode;
var config int PatchPaintRadiusInner[16];
var config int PatchPaintRadiusOuter[16];
var config int PatchPaintStrength[16];
var config int PatchPaintValue1[16];
var config int PatchPaintValue2[16];
var const bool bFastRebuild;
var const bool bBootstrapping;
var const bool bShowInterpolationGhostPoints;
var const config int AutoSaveIndex;
var const int AutoSaveCount;
var const int Mode;
var const int ClickFlags;
var const float MovementSpeed;
var const Package ParentContext;
var const Vector ClickLocation;
var const Plane ClickPlane;
var const array<Object> Tools;
var const Class BrowseClass;
var config bool bCheckWithDragGrid;
var config float GridCheckErrorThreshold;
var const int ConstraintsVtbl;
var(Grid) config bool GridEnabled;
var(Grid) config bool SnapVertices;
var(Grid) config int UseSizingBox;
var(Grid) config float SnapDistance;
var(Grid) config Vector GridSize;
var(RotationGrid) config bool RotGridEnabled;
var(RotationGrid) config Rotator RotGridSize;
var(Advanced) config float FovAngle;
var(Advanced) config bool GodMode;
var(Advanced) config bool AutoSave;
var(Advanced) config byte AutosaveTimeMinutes;
var(Advanced) config string GameCommandLine;
var(Advanced) config array<string> EditPackages;
var(Advanced) config bool LoadEntirePackageWhenSaving;
var(Advanced) config bool SolidColorBackground;
var(Colors) noexport config Color C_View2DAxes "Applied to the grid axes (origin and world extents) in 2D Orthogonal Viewports.";
var(Colors) noexport config Color C_View2DBackground "Applied to the background behind the grid wires in 2D Orthgonal Viewports.";
var(Colors) noexport config Color C_View2DWires "Applied to the grid wires in 2D Orthogonal Viewports.";
var(Colors) noexport config Color C_View3DAxes "Applied to the grid axes (origin and world extents) in the 3D Viewports where permitted.";
var(Colors) noexport config Color C_View3DBackground "Applied to the background behind the grid wires in the 3D Viewports where permitted.";
var(Colors) noexport config Color C_View3DWires "Applied to the grid wires in the 3D Viewports where permitted.";
var(Colors) noexport config Color C_ViewLightModeAxes "Applied to the grid axes (origin and world extents) in Light Box view mode (2D and 3D).";
var(Colors) noexport config Color C_ViewLightModeBackground "Applied to the background behind the grid wires in Light Box view mode (2D and 3D).";
var(Colors) noexport config Color C_ViewLightModeWires "Applied to the grid wires when in Light Box view mode (2D and 3D).";
var(Colors) noexport config Color C_BrushWorking "Used for the 'Working Brush', as well as several other various tools.";
var(Colors) noexport config Color C_BrushAddWire "Applied to Additive brushes in wire frame mode.";
var(Colors) noexport config Color C_BrushSubtractWire "Applied to Subtractive brushes in wire frame mode.";
var(Colors) noexport config Color C_BrushSemiSolidWire "Applied to SemiSolid brushes in wire frame mode.";
var(Colors) noexport config Color C_BrushNonSolidWire "Applied to NonSolid brushes in wire frame mode.";
var(Colors) noexport config Color C_BrushPortalWire "Applied to Portal brushes in wire frame mode.";
var(Colors) noexport config Color C_ActorInfoWire "Used for connecting lines between actors, collision radius display, directional arrow, etc.";
var(Colors) noexport config Color C_BackgroundColor "Used for the background of the texture browser.";
var int LockMeshView;

defaultproperties
{
    MenuUp=Texture'B_MenuUp'
    MenuDn=Texture'B_MenuDn'
    CollOn=Texture'B_CollOn'
    CollOff=Texture'B_CollOf'
    PlyrOn=Texture'B_PlyrOn'
    PlyrOff=Texture'B_PlyrOf'
    LiteOn=Texture'B_LiteOn'
    Bad=Texture'Bad'
    Bkgnd=Texture'Bkgnd'
    BkgndHi=Texture'BkgndHi'
    PatchPaintRadiusInner[0]=64
    PatchPaintRadiusInner[1]=64
    PatchPaintRadiusInner[2]=64
    PatchPaintRadiusInner[3]=64
    PatchPaintRadiusInner[4]=64
    PatchPaintRadiusInner[5]=64
    PatchPaintRadiusInner[6]=64
    PatchPaintRadiusInner[7]=64
    PatchPaintRadiusInner[8]=64
    PatchPaintRadiusInner[9]=64
    PatchPaintRadiusOuter[0]=64
    PatchPaintRadiusOuter[1]=64
    PatchPaintRadiusOuter[2]=64
    PatchPaintRadiusOuter[3]=64
    PatchPaintRadiusOuter[4]=64
    PatchPaintRadiusOuter[5]=64
    PatchPaintRadiusOuter[6]=64
    PatchPaintRadiusOuter[7]=64
    PatchPaintRadiusOuter[8]=64
    PatchPaintRadiusOuter[9]=64
    PatchPaintStrength[0]=25
    PatchPaintStrength[1]=25
    PatchPaintStrength[2]=25
    PatchPaintStrength[3]=25
    PatchPaintStrength[4]=25
    PatchPaintStrength[5]=25
    PatchPaintStrength[6]=25
    PatchPaintStrength[7]=25
    PatchPaintStrength[8]=25
    PatchPaintStrength[9]=25
    PatchPaintValue1[0]=3000
    PatchPaintValue1[1]=255
    PatchPaintValue1[2]=255
    PatchPaintValue1[3]=255
    PatchPaintValue1[4]=255
    PatchPaintValue1[5]=255
    PatchPaintValue1[6]=255
    PatchPaintValue1[7]=255
    PatchPaintValue1[8]=255
    PatchPaintValue1[9]=1
    AutoSaveIndex=6
    GridEnabled=true
    SnapDistance=10
    GridSize=(X=16,Y=16,Z=16)
    RotGridEnabled=true
    RotGridSize=(Pitch=1024,Yaw=1024,Roll=1024)
    GodMode=true
    AutoSave=true
    AutosaveTimeMinutes=5
    GameCommandLine="-log"
    EditPackages(0)="Engine"
    EditPackages(1)="Editor"
    EditPackages(2)="UWindow"
    EditPackages(3)="Fire"
    EditPackages(4)="IPServer"
    EditPackages(5)="dnWindow"
    EditPackages(6)="dnObjLoad"
    EditPackages(7)="dnParticles"
    EditPackages(8)="dnMaterial"
    EditPackages(9)="dnGame"
    EditPackages(10)="dnDecorations"
    EditPackages(11)="dnVehicles"
    EditPackages(12)="dnAI"
    EditPackages(13)="dnModIce"
    LoadEntirePackageWhenSaving=true
    C_View2DAxes=(R=112,G=112,B=112,A=0)
    C_View2DBackground=(R=163,G=163,B=163,A=0)
    C_View2DWires=(R=128,G=128,B=128,A=0)
    C_View3DAxes=(R=0,G=0,B=128,A=0)
    C_View3DWires=(R=0,G=0,B=64,A=0)
    C_ViewLightModeAxes=(R=32,G=32,B=32,A=0)
    C_ViewLightModeWires=(R=16,G=16,B=16,A=0)
    C_BrushWorking=(R=255,G=63,B=63,A=0)
    C_BrushAddWire=(R=127,G=127,B=255,A=0)
    C_BrushSubtractWire=(R=255,G=192,B=63,A=0)
    C_BrushSemiSolidWire=(R=223,G=149,B=157,A=0)
    C_BrushNonSolidWire=(R=63,G=192,B=32,A=0)
    C_BrushPortalWire=(R=32,G=255,B=16,A=0)
    C_ActorInfoWire=(R=163,G=0,B=0,A=0)
    C_BackgroundColor=(R=255,G=255,B=255,A=0)
    CacheSizeMegs=6
}