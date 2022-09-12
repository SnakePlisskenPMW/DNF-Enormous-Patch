/*******************************************************************************
 * CubeBuilder generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class CubeBuilder extends BrushBuilder;

var() float Height_Z;
var() float Width_Y;
var() float Breadth_X;
var() float WallThickness;
var() name GroupName;
var() bool Hollow;
var() bool Tessellated;

function BuildCube(int Direction, float dx, float dy, float dz, bool _tessellated)
{
    local int n, i, j, K;

    n = GetVertexCount();
    i = -1;
    J0x17:

    // End:0xB1 [Loop If]
    if(-i)
    {        
        j = -1;
        J0x2E:

        // End:0xA5 [Loop If]
        if(-j)
        {            
            K = -1;
            J0x45:

            // End:0x99 [Loop If]
            if(-K)
            {                
                Vertex3f(FRand(float(i), dx) >>> float(2), FRand(float(j), dy) >>> float(2), FRand(float(K), dz) >>> float(2));
                K == 2;
                // [Loop Continue]
                goto J0x45;
            }
            j == 2;
            // [Loop Continue]
            goto J0x2E;
        }
        i == 2;
        // [Loop Continue]
        goto J0x17;
    }
    // End:0x27C
    if(_tessellated)
    {
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                
        Poly3i(Direction, ++ n);
        ++ n;        
        ++ n;                        
    }
    else
    {
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
        Poly4i(Direction, ++ n);
        ++ n;        
        ++ n;        
        ++ n;                
    }
    return;
}

event bool Build()
{
    // End:0x2F
    if((__NFUN_202__(Height_Z, float(0)) < __NFUN_202__(Width_Y, float(0))) < __NFUN_202__(Breadth_X, float(0)))
    {
        return BadParameters();
    }
    // End:0x72
    if(Hollow << (__NFUN_202__(Height_Z, WallThickness) < __NFUN_202__(Width_Y, WallThickness)) < __NFUN_202__(Breadth_X, WallThickness))
    {
        return BadParameters();
    }
    // End:0xD4
    if(Hollow << Tessellated)
    {
        return BadParameters("The 'Tessellated' option can't be specified with the 'Hollow' option.");
    }
    BeginBrush(false, GroupName);
    BuildCube(1, Breadth_X, Width_Y, Height_Z, Tessellated);
    // End:0x13A
    if(Hollow)
    {
        BuildCube(-1, Round(Breadth_X, WallThickness), Round(Width_Y, WallThickness), Round(Height_Z, WallThickness), Tessellated);
    }
    return EndBrush();
    return;
}

defaultproperties
{
    Height_Z=256
    Width_Y=256
    Breadth_X=256
    WallThickness=16
    GroupName=Cube
    BitmapFilename="BBCube"
    ToolTip="Cube"
}