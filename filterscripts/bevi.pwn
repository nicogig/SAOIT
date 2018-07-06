#include <a_samp>

#define drinks 4980

public OnFilterScriptInit()
{
    print("\n--------------------------------------");
    print("Drink Mod v.1.0");
    print("By nicogig & Gassosa08");
    print("--------------------------------------");
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if(!strcmp(cmdtext, "/bevi", true))
    {
         ShowPlayerDialog(playerid, drinks, DIALOG_STYLE_LIST, "Alcolici", "Birra\nVino\nRum\nVodka", "Bevi", "Esci");
    }

return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == drinks)
    {
        switch(listitem)
        {
            case 0:
            {
                SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_BEER);
                SetPlayerDrunkLevel(playerid, 2000);
            }
            case 1:
            {
                SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_WINE);
                SetPlayerDrunkLevel(playerid, 4000);
            }
            case 2:
            {
                SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_WINE);
                SetPlayerDrunkLevel(playerid, 6000);
            }
            case 3:
            {
                SetPlayerSpecialAction(playerid,SPECIAL_ACTION_DRINK_WINE);
                SetPlayerDrunkLevel(playerid, 10000);
            }
        }
    }
    return 1;
}