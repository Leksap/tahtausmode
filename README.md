## Tähtäysmode
Fivem tähtäysmode scripti jolla pelaajat voi vaihtaa thirdpersonin ja firstpersonin väliltä

## Ominaisuudet
- Tallentaa valinnan kvp databaseen
- Thirdpersonissa rekyyli

## Asennus
1. Lataa kusi scripti
2. Pistä resources kansioon
3. Poista mahdollisest firstperson scriptit ja rekyyli scriptit ja kato ettei mikää scripti piilota crossua `HideHudComponentThisFrame(14)`
4. Lisää `start tahtausmode` servun `server.cfg` filuun.

## Käyttö
/tähtäysmode vaihtaa tähtäystä

Voit myös halutessasi laittaa alla olevan exportin esim hahmoluonnin loppuun nii uudet pelaajat voi valita makunsa mukaan kun tulee servul
  ```
  exports('alkuvalinta', alkuvalinta)
  ```


## Jos löydät probleemii tai sulla on parannusehdotuksia, avaa issue tai tee pull requesti.
