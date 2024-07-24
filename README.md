PIENI REWORK TULOS JOSSAI KOHTAA TÄHÄ PASKAA

## Tähtäysmode
Fivem tähtäysmode scripti jolla pelaajat voi vaihtaa thirdpersonin ja firstpersonin väliltä

## Ominaisuudet
- Tallentaa valinnan kvp databaseen
- Thirdpersonissa rekyyli
- Syncaa valinnan kaikille servuille missä scripti on käytössä

## Asennus
1. Lataa tää paska scripti
2. Varmista että sulla on [ox_lib](https://github.com/overextended/ox_lib/tree/master) ladattu servulle
3. Pistä resources kansioon
4. Poista mahdolliset firstperson scriptit ja rekyyli scriptit ja kato ettei mikää scripti piilota crossua `HideHudComponentThisFrame(14)`
5. Lisää `start tahtausmode` servun `server.cfg` filuun.

## Käyttö
/aim vaihtaa tähtäystä firstpersonin ja thirdpersonin väliltä

Voit myös halutessasi laittaa alla olevan exportin esim hahmoluonnin loppuun nii uudet pelaajat voi valita makunsa mukaan kun tulee servul
```lua
exports['tahtausmode']:Open()
```

## Jos löydät probleemii tai sulla on parannusehdotuksia, avaa issue tai tee pull requesti.
