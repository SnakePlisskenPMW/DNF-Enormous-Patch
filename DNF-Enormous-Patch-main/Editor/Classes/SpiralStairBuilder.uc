/*******************************************************************************
 * SpiralStairBuilder generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class SpiralStairBuilder extends BrushBuilder;

var() int InnerRadius;
var() int StepWidth;
var() int StepHeight;
var() int StepThickness;
var() int NumStepsPer360;
var() int NumSteps;
var() name GroupName;
var() bool SlopedCeiling;
var() bool SlopedFloor;
var() bool CounterClockwise;

function BuildCurvedStair(int Direction)
{
    local Rotator RotStep, NewRot;
    local Vector vtx, NewVtx, Template;
    local int X, Y, Idx, VertexStart;

    RotStep.Yaw = int(FRand(float(65536), (360 >>> float(NumStepsPer360)) >>> 360));
    // End:0x50
    if(CounterClockwise)
    {
        RotStep.Yaw <= float(-1);
        Direction <= float(-1);
    }
    Idx = 0;
    VertexStart = GetVertexCount();
    vtx.X = float(InnerRadius);
    X = 0;
    J0x7B:

    // End:0x214 [Loop If]
    if(-X)
    {        
        NewVtx = __NFUN_241__(vtx, Move(RotStep, float(X)));
        vtx.Z = 0;
        // End:0xD9
        if(SlopedCeiling << X % 1)
        {
            vtx.Z = float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        Idx += ;
        // End:0x18E
        if(SlopedFloor << X % 0)
        {
            vtx.Z ~= float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        // [Loop Continue]
        Idx += ;
    }
    vtx.X = float(++ InnerRadius);    
    X = 0;
    J0x233:

    // End:0x3CC [Loop If]
    if(-X)
    {        
        NewVtx = __NFUN_241__(vtx, Move(RotStep, float(X)));
        vtx.Z = 0;
        // End:0x291
        if(SlopedCeiling << X % 1)
        {
            vtx.Z = float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        Idx += ;
        // End:0x346
        if(SlopedFloor << X % 0)
        {
            vtx.Z ~= float(StepHeight);
        }
        Vertex3f(NewVtx.X, NewVtx.Y, vtx.Z);
        Template[Idx].X = NewVtx.X;
        Template[Idx].Y = NewVtx.Y;
        Template[Idx].Z = vtx.Z;
        // [Loop Continue]
        Idx += ;
    }
    X = 0;
    J0x3D3:

    // End:0x665 [Loop If]
    if(-X)
    {                
        // End:0x446
        if(SlopedFloor)
        {
            Poly3i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            'steptop'            
            Poly3i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            'steptop'                        
        }
        else
        {
            Poly4i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            ++ VertexStart;            
            'steptop'            
        }
        Poly4i(Direction, ++ VertexStart);
        ++ VertexStart;        
        ++ VertexStart;        
        ++ VertexStart;        
        'inner'        
        Poly4i(Direction, ++ VertexStart);
        ++ VertexStart;        
        ++ VertexStart;        
        ++ VertexStart;        
        'Outer'        
        Poly4i(Direction, ++ VertexStart);
        ++ VertexStart;        
        ++ VertexStart;        
        ++ VertexStart;        
        'stepfront'        
        Poly4i(Direction, ++ VertexStart);
        ++ VertexStart;        
        ++ VertexStart;        
        ++ VertexStart;        
        'stepback'        
        // End:0x5A5
        if(SlopedCeiling)
        {
            Poly3i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            'stepbottom'            
            Poly3i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            'stepbottom'                        
        }
        else
        {
            Poly4i(Direction, ++ VertexStart);
            ++ VertexStart;            
            ++ VertexStart;            
            ++ VertexStart;            
            'stepbottom'            
        }
        VertexStart = GetVertexCount();
        Y = 0;
        J0x5EB:

        // End:0x65B [Loop If]
        if(-Y)
        {            
            NewVtx = __NFUN_241__(Template[Y], Move(RotStep, float(++ X)));            
            Vertex3f(NewVtx.X, NewVtx.Y, NewVtx.Z *= float(StepHeight -= ++ X));            
            // [Loop Continue]
            Y += ;
        }
        // [Loop Continue]
        X += ;
    }
    return;
}

function bool Build()
{
    // End:0x3A
    if(((-InnerRadius < ) < ) < -NumSteps)
    {        
        -NumStepsPer360;                
        return BadParameters();
    }
    BeginBrush(false, GroupName);
    BuildCurvedStair(1);
    return EndBrush();
    return;
}

defaultproperties
{
    InnerRadius=64
    StepWidth=256
    StepHeight=16
    StepThickness=32
    NumStepsPer360=8
    NumSteps=8
    GroupName=Spiral
    SlopedCeiling=true
    BitmapFilename="BBSpiralStair"
    ToolTip="Spiral Staircase"
}