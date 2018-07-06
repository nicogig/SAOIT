
CMD:hp(playerid, params[])
{
    SetPlayerHealth(playerid, 100);
    return 1;
}

CMD:kill(playerid, params[])
{
    SetPlayerHealth(playerid, 0);
    return 1;
}