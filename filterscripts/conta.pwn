#include <a_samp>

#define DIALOG_CONTA 1

public OnFilterScriptInit()
{
    print("This is the most useless script ever.");
    print("Seriously. Why are you even using it?!");
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp(cmdtext, "/conta", true))
    {
        /*for (new i = 1; i < 11; i++)
        {
           new string[3];
           valstr(string, i);
           SendClientMessage(playerid, -1, string);
        }*/
        ShowPlayerDialog(playerid, DIALOG_CONTA, DIALOG_STYLE_MSGBOX, "Conta", "1 2 3 4 5 6 7 8 9 10", "Chiudi", "");
        return 1;
    }
}