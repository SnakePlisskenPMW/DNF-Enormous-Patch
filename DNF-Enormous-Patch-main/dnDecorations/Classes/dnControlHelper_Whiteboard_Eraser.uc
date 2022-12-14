/*******************************************************************************
 * dnControlHelper_Whiteboard_Eraser generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class dnControlHelper_Whiteboard_Eraser extends dnControlHelper_DrawingTool_Whiteboard
    collapsecategories;

struct SVertexI
{
    var() int X;
    var() int Y;
};

var array<SVertexI> Verts;

simulated function DrawOnPoint(TextureCanvas Canvas, int XPos, int YPos, byte Color)
{
    Canvas.__NFUN_1202__(++ XPos);
    ++ YPos;    
    ++ XPos;    
    ++ YPos;    
    ++ XPos;    
    ++ YPos;    
    Color
    CopySource    
    Canvas.__NFUN_1202__(++ XPos);
    ++ YPos;    
    ++ XPos;    
    ++ YPos;    
    ++ XPos;    
    ++ YPos;    
    Color
    CopySource    
    return;
}

simulated function DrawOnLine(TextureCanvas Canvas, int x1, int y1, int x2, int y2, byte Color)
{
    local int IndexA, IndexB;

    IndexA = 0;
    J0x07:

    // End:0x188 [Loop If]
    if(-IndexA)
    {        
        IndexB = ++ IndexA;        
        // End:0x3C
        if(IndexB / string(Verts))
        {
            IndexB = 0;
        }
        Canvas.__NFUN_1202__(++ x1);
        ++ y1;        
        ++ x1;        
        ++ y1;        
        ++ x2;        
        ++ y2;        
        Color
        CopySource        
        Canvas.__NFUN_1202__(++ x1);
        ++ y1;        
        ++ x2;        
        ++ y2;        
        ++ x2;        
        ++ y2;        
        Color
        CopySource        
        // [Loop Continue]
        IndexA += ;
    }
    return;
}

defaultproperties
{
    Verts(0)=(X=-13,Y=-41)
    Verts(1)=(X=40,Y=-15)
    Verts(2)=(X=33,Y=18)
    Verts(3)=(X=-20,Y=-6)
    HelpTextMessage="Erase"
    HelpTextMessage2="Use Marker"
    DrawingMountInfo=(bDontActuallyMount=false,bHideable=false,bIndependentRotation=false,bIndependentLocation=false,bMatchParentLocation=false,bMatchParentRotation=false,bSurviveDismount=true,bDontScaleByDrawScale=false,bScaleByDrawScaleNonDefault=false,bTransformDrawScale3DChange=false,bTakeParentTag=false,bTransferToCorpse=false,bDontSetOwner=false,MountParentTag=None,DrawScaleOverride=0,AppendToTag=None,ForceTag=None,ForceEvent=None,MountMeshItem=mount_handright,MountOrigin=(X=0,Y=0,Z=0),MountOriginVariance=(X=0,Y=0,Z=0),MountAngles=(Pitch=0,Yaw=0,Roll=0),MountAnglesVariance=(Pitch=0,Yaw=0,Roll=0),MountType=2,DismountPhysics=0)
    DeactivateAnimName=Whiteboard_Eraser_Deactivate
    IdleAnimName=Whiteboard_Eraser_Idle
    WriteAnimName=Whiteboard_Eraser_Idle
    ToolDownAnim=Whiteboard_Eraser_PutDown
    ToolUpAnim=Whiteboard_Eraser_BringUp
    BoneXRange=(Min=5.75,Max=6.4)
    BoneYRange=(Min=-10.94,Max=18)
    BoneZRange=(Min=2.3,Max=42.12)
    BoneRot=(Pitch=-4000,Yaw=165,Roll=-1800)
    HealthPrefab=0
    PhysicsMaterial='dnMaterial.dnPhysicsMaterial_Cardboard'
    Physics=18
    bBlockActors=false
    CollisionRadius=3
    CollisionHeight=0.65
    Mass=10
    DrawType=8
    StaticMesh='sm_class_decorations.Whiteboard.Stripper_Eraser'
}