/*******************************************************************************
 * UBrowserBufferedTCPLink generated by Eliot.UELib using UELib.CLI.
 * Eliot.UELib © 2009-2022 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class UBrowserBufferedTCPLink extends TcpLink
	transient
	collapsecategories
	hidecategories(movement,Collision,Lighting,LightColor);

var string InputBuffer;
var string OutputBuffer;
var string CRLF;
var string CR;
var string LF;
var bool bWaiting;
var float WaitTimeoutTime;
var string WaitingFor;
var int WaitForCountChars;
var string WaitResult;
var int WaitMatchData;

function ResetBuffer()
{
	InputBuffer = "";
	OutputBuffer = "";
	bWaiting = false;
	CRLF = __NFUN_302__(__NFUN_321__(10), __NFUN_321__(13));
	CR = __NFUN_321__(13);
	LF = __NFUN_321__(10);
	return;
}

function WaitFor(string What, float TimeOut, int MatchData)
{
	bWaiting = true;
	WaitingFor = What;
	WaitForCountChars = 0;
	WaitTimeoutTime = __NFUN_198__(Level.TimeSeconds, TimeOut);
	WaitMatchData = MatchData;
	WaitResult = "";
	return;
}

function WaitForCount(int Count, float TimeOut, int MatchData)
{
	bWaiting = true;
	WaitingFor = "";
	WaitForCountChars = Count;
	WaitTimeoutTime = __NFUN_198__(Level.TimeSeconds, TimeOut);
	WaitMatchData = MatchData;
	WaitResult = "";
	return;
}

function GotMatch(int MatchData)
{
	return;
}

function GotMatchTimeout(int MatchData)
{
	return;
}

function string ParseDelimited(string Text, string Delimiter, int Count, optional bool bToEndOfLine)
{
	local string Result;
	local int Found, i;
	local string S;

	Result = "";
	Found = 1;
	i = 0;
	J0x16:

	// End:0xC0 [Loop If]
	if(__NFUN_169__(i, __NFUN_314__(Text)))
	{
		S = __NFUN_316__(Text, i, 1);
		// End:0x94
		if(__NFUN_174__(__NFUN_315__(Delimiter, S), -1))
		{
			// End:0x8A
			if(__NFUN_173__(Found, Count))
			{
				// End:0x84
				if(bToEndOfLine)
				{
					return __NFUN_302__(Result, __NFUN_316__(Text, i));					
				}
				else
				{
					return Result;
				}
			}
			__NFUN_184__(Found);
			// [Explicit Continue]
			goto J0xB6;
		}
		// End:0xB6
		if(__NFUN_172__(Found, Count))
		{
			Result = __NFUN_302__(Result, S);
		}
		J0xB6:

		__NFUN_184__(i);
		// [Loop Continue]
		goto J0x16;
	}
	return Result;
	return;
}

function int ReadChar()
{
	local int C;

	// End:0x0F
	if(__NFUN_308__(InputBuffer, ""))
	{
		return 0;
	}
	C = __NFUN_322__(__NFUN_317__(InputBuffer, 1));
	InputBuffer = __NFUN_316__(InputBuffer, 1);
	return C;
	return;
}

function int PeekChar()
{
	local int C;

	// End:0x0F
	if(__NFUN_308__(InputBuffer, ""))
	{
		return 0;
	}
	return __NFUN_322__(__NFUN_317__(InputBuffer, 1));
	return;
}

function bool ReadBufferedLine(out string Text)
{
	local int i;

	i = __NFUN_315__(InputBuffer, __NFUN_321__(13));
	// End:0x24
	if(__NFUN_173__(i, -1))
	{
		return false;
	}
	Text = __NFUN_317__(InputBuffer, i);
	// End:0x5A
	if(__NFUN_308__(__NFUN_316__(InputBuffer, __NFUN_165__(i, 1), 1), __NFUN_321__(10)))
	{
		__NFUN_184__(i);
	}
	InputBuffer = __NFUN_316__(InputBuffer, __NFUN_165__(i, 1));
	return true;
	return;
}

function SendBufferedData(string Text)
{
	OutputBuffer = __NFUN_302__(OutputBuffer, Text);
	return;
}

event ReceivedText(string Text)
{
	InputBuffer = __NFUN_302__(InputBuffer, Text);
	return;
}

function DoBufferQueueIO()
{
	local int i;

	J0x00:
	// End:0x13D [Loop If]
	if(bWaiting)
	{
		// End:0x35
		if(__NFUN_201__(Level.TimeSeconds, WaitTimeoutTime))
		{
			bWaiting = false;
			GotMatchTimeout(WaitMatchData);
		}
		// End:0x91
		if(__NFUN_170__(WaitForCountChars, 0))
		{
			// End:0x55
			if(__NFUN_169__(__NFUN_314__(InputBuffer), WaitForCountChars))
			{
				// [Explicit Break]
				goto J0x13D;
			}
			WaitResult = __NFUN_317__(InputBuffer, WaitForCountChars);
			InputBuffer = __NFUN_316__(InputBuffer, WaitForCountChars);
			bWaiting = false;
			GotMatch(WaitMatchData);			
		}
		else
		{
			i = __NFUN_315__(InputBuffer, WaitingFor);
			// End:0xD8
			if(__NFUN_148__(__NFUN_173__(i, -1), __NFUN_308__(WaitingFor, CR)))
			{
				i = __NFUN_315__(InputBuffer, LF);
			}
			// End:0x137
			if(__NFUN_174__(i, -1))
			{
				WaitResult = __NFUN_317__(InputBuffer, __NFUN_165__(i, __NFUN_314__(WaitingFor)));
				InputBuffer = __NFUN_316__(InputBuffer, __NFUN_165__(i, __NFUN_314__(WaitingFor)));
				bWaiting = false;
				GotMatch(WaitMatchData);				
			}
			else
			{
				// [Explicit Break]
				goto J0x13D;
			}
		}
		// [Loop Continue]
		goto J0x00;
	}
	J0x13D:

	// End:0x164
	if(__NFUN_1144__())
	{
		i = __NFUN_1145__(OutputBuffer);
		OutputBuffer = __NFUN_316__(OutputBuffer, i);
	}
	return;
}

defaultproperties
{
	ReceiveMode=1
}