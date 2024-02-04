#include <YSI_Coding\y_hooks>

new PlayerText: AufaCreateScrip[MAX_PLAYERS][44];

stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 44; i++)
    {
        PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][i]);
    }
}


stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:health, Float:armour, Float:aufalapar, Float:aufahaus, Float:stress;
        new str[300];
        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);

        health = PlayerData[playerid][pHealth] * 24.0/100;
		PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][0], health, 15.0);
		PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][0]);

        armour = PlayerData[playerid][pHealth] * 24.0/100;
		PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][1], armour, 15.0);
		PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][1]);

        aufalapar = PlayerData[playerid][pHunger] * -15.0/100;
        PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][2], 17.0, aufalapar);
        PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][2]);

        aufahaus = PlayerData[playerid][pThirst] * -15.0/100;
        PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][3], 17.0, aufahaus);
        PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][3]);

        stress = PlayerData[playerid][pStress] * -15.0/100;
        PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][4], 17.0, stress);
        PlayerTextDrawShow(playerid, AufaCreateScrip[playerid][4]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

hook OnGameModeInit() {
    AufaCreateScrip[playerid][0] = CreatePlayerTextDraw(playerid, 6.000, 428.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][0], 24.000, 15.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][0], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][0], -50265345);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][0], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][0], 1);

    AufaCreateScrip[playerid][1] = CreatePlayerTextDraw(playerid, 34.000, 428.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][1], 24.000, 15.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][1], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][1], -2139062017);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][1], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][1], 1);

    AufaCreateScrip[playerid][2] = CreatePlayerTextDraw(playerid, 63.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][2], 17.000, -15.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][2], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][2], -5963521);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][2], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][2], 1);

    AufaCreateScrip[playerid][3] = CreatePlayerTextDraw(playerid, 84.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][3], 17.000, -15.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][3], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][3], 512819199);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][3], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][3], 1);

    AufaCreateScrip[playerid][4] = CreatePlayerTextDraw(playerid, 105.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][4], 17.000, -15.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][4], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][4], -1976835329);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][4], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][4], 1);

    AufaCreateScrip[playerid][5] = CreatePlayerTextDraw(playerid, 5.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][5], 25.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][5], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][5], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][5], 1);

    AufaCreateScrip[playerid][6] = CreatePlayerTextDraw(playerid, 5.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][6], 26.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][6], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][6], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][6], 1);

    AufaCreateScrip[playerid][7] = CreatePlayerTextDraw(playerid, 5.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][7], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][7], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][7], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][7], 1);

    AufaCreateScrip[playerid][8] = CreatePlayerTextDraw(playerid, 30.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][8], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][8], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][8], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][8], 1);

    AufaCreateScrip[playerid][9] = CreatePlayerTextDraw(playerid, 80.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][9], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][9], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][9], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][9], 1);

    AufaCreateScrip[playerid][10] = CreatePlayerTextDraw(playerid, 33.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][10], 25.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][10], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][10], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][10], 1);

    AufaCreateScrip[playerid][11] = CreatePlayerTextDraw(playerid, 62.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][11], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][11], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][11], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][11], 1);

    AufaCreateScrip[playerid][12] = CreatePlayerTextDraw(playerid, 62.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][12], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][12], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][12], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][12], 1);

    AufaCreateScrip[playerid][13] = CreatePlayerTextDraw(playerid, 33.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][13], 26.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][13], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][13], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][13], 1);

    AufaCreateScrip[playerid][14] = CreatePlayerTextDraw(playerid, 33.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][14], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][14], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][14], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][14], 1);

    AufaCreateScrip[playerid][15] = CreatePlayerTextDraw(playerid, 62.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][15], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][15], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][15], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][15], 1);

    AufaCreateScrip[playerid][16] = CreatePlayerTextDraw(playerid, 58.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][16], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][16], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][16], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][16], 1);

    AufaCreateScrip[playerid][17] = CreatePlayerTextDraw(playerid, 101.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][17], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][17], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][17], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][17], 1);

    AufaCreateScrip[playerid][18] = CreatePlayerTextDraw(playerid, 83.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][18], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][18], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][18], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][18], 1);

    AufaCreateScrip[playerid][19] = CreatePlayerTextDraw(playerid, 83.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][19], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][19], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][19], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][19], 1);

    AufaCreateScrip[playerid][20] = CreatePlayerTextDraw(playerid, 83.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][20], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][20], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][20], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][20], 1);

    AufaCreateScrip[playerid][21] = CreatePlayerTextDraw(playerid, 122.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][21], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][21], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][21], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][21], 1);

    AufaCreateScrip[playerid][22] = CreatePlayerTextDraw(playerid, 104.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][22], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][22], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][22], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][22], 1);

    AufaCreateScrip[playerid][23] = CreatePlayerTextDraw(playerid, 104.000, 443.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][23], 19.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][23], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][23], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][23], 1);

    AufaCreateScrip[playerid][24] = CreatePlayerTextDraw(playerid, 104.000, 427.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][24], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][24], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][24], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][24], 1);

    AufaCreateScrip[playerid][25] = CreatePlayerTextDraw(playerid, 9.000, 432.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][25], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][25], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][25], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][25], 1);

    AufaCreateScrip[playerid][26] = CreatePlayerTextDraw(playerid, 12.000, 432.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][26], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][26], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][26], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][26], 1);

    AufaCreateScrip[playerid][27] = CreatePlayerTextDraw(playerid, 10.000, 435.000, "V");
    PlayerTextDrawLetterSize(playerid, AufaCreateScrip[playerid][27], 0.270, 0.499);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][27], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][27], 1);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][27], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][27], 263936);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][27], 1);

    AufaCreateScrip[playerid][28] = CreatePlayerTextDraw(playerid, 10.000, 433.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][28], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][28], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][28], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][28], 1);

    AufaCreateScrip[playerid][29] = CreatePlayerTextDraw(playerid, 37.000, 436.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][29], 8.000, -3.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][29], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][29], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][29], 1);

    AufaCreateScrip[playerid][30] = CreatePlayerTextDraw(playerid, 39.000, 439.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][30], 4.000, -5.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][30], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][30], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][30], 1);

    AufaCreateScrip[playerid][31] = CreatePlayerTextDraw(playerid, 65.000, 430.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][31], 12.000, 6.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][31], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][31], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][31], 1);

    AufaCreateScrip[playerid][32] = CreatePlayerTextDraw(playerid, 67.000, 433.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][32], 8.000, 3.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][32], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][32], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][32], 1);

    AufaCreateScrip[playerid][33] = CreatePlayerTextDraw(playerid, 67.000, 437.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][33], 8.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][33], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][33], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][33], 1);

    AufaCreateScrip[playerid][34] = CreatePlayerTextDraw(playerid, 67.000, 439.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][34], 8.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][34], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][34], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][34], 1);

    AufaCreateScrip[playerid][35] = CreatePlayerTextDraw(playerid, 88.000, 438.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][35], 9.000, 2.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][35], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][35], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][35], 1);

    AufaCreateScrip[playerid][36] = CreatePlayerTextDraw(playerid, 92.000, 435.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][36], 1.000, 4.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][36], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][36], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][36], 1);

    AufaCreateScrip[playerid][37] = CreatePlayerTextDraw(playerid, 87.000, 430.000, "V");
    PlayerTextDrawLetterSize(playerid, AufaCreateScrip[playerid][37], 0.428, 0.699);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][37], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][37], 1);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][37], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][37], 263936);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][37], 1);

    AufaCreateScrip[playerid][38] = CreatePlayerTextDraw(playerid, 89.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][38], 7.000, 1.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][38], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][38], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][38], 1);

    AufaCreateScrip[playerid][39] = CreatePlayerTextDraw(playerid, 90.000, 432.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][39], 4.000, 2.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][39], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][39], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][39], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][39], 1);

    AufaCreateScrip[playerid][40] = CreatePlayerTextDraw(playerid, 109.000, 429.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][40], 4.000, 13.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][40], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][40], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][40], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][40], 1);

    AufaCreateScrip[playerid][41] = CreatePlayerTextDraw(playerid, 111.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][41], 2.000, 9.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][41], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][41], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][41], 1);

    AufaCreateScrip[playerid][42] = CreatePlayerTextDraw(playerid, 114.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][42], 2.000, 9.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][42], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][42], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][42], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][42], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][42], 1);

    AufaCreateScrip[playerid][43] = CreatePlayerTextDraw(playerid, 114.000, 429.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AufaCreateScrip[playerid][43], 4.000, 13.000);
    PlayerTextDrawAlignment(playerid, AufaCreateScrip[playerid][43], 1);
    PlayerTextDrawColor(playerid, AufaCreateScrip[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, AufaCreateScrip[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, AufaCreateScrip[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCreateScrip[playerid][43], 255);
    PlayerTextDrawFont(playerid, AufaCreateScrip[playerid][43], 4);
    PlayerTextDrawSetProportional(playerid, AufaCreateScrip[playerid][43], 1);
}