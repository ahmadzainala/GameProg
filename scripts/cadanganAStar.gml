if(obHero.x mod 32 == 0 && obHero.y mod 32 == 0 && stat == 0){
    ruang = 1;
    if((obHero.x >= 128 && obHero.y <= 608 && obHero.x <= 160 && obHero.y >= 480)){
        ruang = 0;
    }
    stat = 1;
    tempXhero = obHero.x;
    tempXhero = obHero.y;

    if(x mod 32 != 0 || y mod 32 != 0 && stat == 1){
        stat = 2;
        tX = x div 32;
        tY = y div 32;
        tX = tX * 32;
        tY = tY * 32;
        lebihX = x - tX;
        lebihY = y - tY;
        if(place_free(tX+32,y) && lebihX >= 0.5 && x >= tempXthis && jutsu < 6){
            x = tX + 32;
            jutsu = jutsu + 1;
        }else if(place_free(tX-32,y) && lebihX >= 0.5 && x < tempXthis && jutsu < 6){
            x = tX - 32;
            jutsu = jutsu + 1;
        }else{
            x = tX;
        }
        
        if(place_free(tX,tY+32) && lebihY >= 0.5 && y >= tempYthis && jutsu < 6){
            y = tY + 32;  
            jutsu = jutsu + 1;
        }else if(place_free(tX,tY-32) && lebihY < 0.5 && y < tempYthis && jutsu < 6){
            y = tY - 32;
            jutsu = jutsu + 1;
        }else{
            y = tY;
        }
        tempXthis = x;
        tempYthis = y;
    }
    statInjak = 1;
}
if(stat == 1 && (obHero.x != tempXhero || obHero.y != tempYhero)){
    stat = 0;
    statInjak = 0;
}
if(stat == 2 && (obHero.x != tempXhero && obHero.y != tempYhero)){
    stat = 1;
}
if (jutsu == 6){
    time = time - 1;
}
if (time == 0){
    jutsu = 0;
    time = 100;
}
if(x mod 32 == 0 && y mod 32 == 0 && ruang == 1){
    var path = aStarGetPath(x,y,tempXthis,tempYthis);
    path_start(path,2,0,false);
}
