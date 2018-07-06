#include <a_samp> 

//KEY DEFINES=================================================//
#define HOLDING(%0) \
	((newkeys & (%0)) == (%0))

#define PRESSED(%0) \
	(((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))

#define PRESSING(%0,%1) \
	(%0 & (%1))

#define RELEASED(%0) \
	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))
//============================================================//


main()
{
    return 1;
}

public OnGameModeInit()
{
    UsePlayerPedAnims();
    AddPlayerClass(0,2495.3948,-1686.2916,13.5142,0.4923,0,0,0,0,0,0);
    AddPlayerClass(2,2495.3948,-1686.2916,13.5142,0.4923,0,0,0,0,0,0);
    AddPlayerClass(3,2495.3948,-1686.2916,13.5142,0.4923,0,0,0,0,0,0);
    AddPlayerClass(6,2495.3948,-1686.2916,13.5142,0.4923,0,0,0,0,0,0);
    AddPlayerClass(7,2495.3948,-1686.2916,13.5142,0.4923,0,0,0,0,0,0);
    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0xFFFFFF, "Welcome!");
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid,2495.3948,-1686.2916,13.5142);
    SetPlayerFacingAngle(playerid, 0);
    SetPlayerCameraPos(playerid, 2497.2422,-1684.2833,13.3914);
    SetPlayerCameraLookAt(playerid, 2495.3948,-1686.2916,13.5142, 2);
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    return 1;
}


