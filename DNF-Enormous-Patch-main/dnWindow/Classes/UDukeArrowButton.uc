/*******************************************************************************
 * UDukeArrowButton generated by Eliot.UELib using UE Explorer.exe.
 * Eliot.UELib ? 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UDukeArrowButton extends UWindowButton;

var bool bLeft;

function BeforePaint(Canvas C, float X, float Y)
{
    super(UWindowDialogControl).BeforePaint(C, X, Y);
    UpTexture = GetLookAndFeelTexture2();
    OverTexture = GetLookAndFeelTexture2();
    DownTexture = GetLookAndFeelTexture2();
    // End:0x84
    if(bLeft)
    {
        UpRegion = LookAndFeel.ArrowButtonLeftUp;
        OverRegion = LookAndFeel.ArrowButtonLeftUp;
        DownRegion = LookAndFeel.ArrowButtonLeftDown;        
    }
    else
    {
        UpRegion = LookAndFeel.ArrowButtonRightUp;
        OverRegion = LookAndFeel.ArrowButtonRightUp;
        DownRegion = LookAndFeel.ArrowButtonRightDown;
    }
    return;
}

defaultproperties
{
    bSolid=true
    bUseRegion=true
}