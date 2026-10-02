# App Legal

Mobilappok jogi oldalai (adatvédelmi tájékoztató, felhasználási feltételek, támogatás) GitHub Pages-en, amíg az appoknak nincs saját domainjük.

Oldal: https://szig83.github.io/app-legal/

## Store URL-ek

### Stone Runner

| Mire | URL |
| --- | --- |
| Privacy Policy URL (App Store, Google Play) | https://szig83.github.io/app-legal/stone-runner/privacy/ |
| Support URL (App Store) | https://szig83.github.io/app-legal/stone-runner/support/ |
| Marketing URL (App Store, opcionális) | https://szig83.github.io/app-legal/stone-runner/ |
| Felhasználási feltételek (EULA, opcionális) | https://szig83.github.io/app-legal/stone-runner/terms/ |
| Magyar lokalizációhoz | `.../stone-runner/hu/adatvedelem/`, `.../hu/tamogatas/`, `.../hu/felhasznalasi-feltetelek/` |

## Felépítés

```
_config.yml          üzemeltető adatai (egy helyen, minden oldal innen veszi)
_data/apps.yml       appok listája: név, ikon, dokumentumok és URL-jeik nyelvenként
_data/i18n.yml       felületi szövegek (en, hu)
_layouts/default.html közös sablon: fejléc, fülek, nyelvváltó, lábléc
assets/style.css     stílus (világos és sötét mód)
<app>/               egy app oldalai
  icon.png           app ikon (256 px)
  en/*.md, en/index.html   angol oldalak (URL: /<app>/...)
  hu/*.md, hu/index.html   magyar oldalak (URL: /<app>/hu/...)
```

Az URL-t mindig a front matter `permalink` mezője adja, nem a fájl helye.

## Új app hozzáadása

1. Másold le a `stone-runner/` mappát az új app nevével (pl. `my-app/`), cseréld az `icon.png`-t.
2. Írd át a front matterben az `app:` kulcsot és a `permalink`-eket.
3. Vedd fel az appot a `_data/apps.yml`-ba ugyanazokkal az URL-ekkel.
4. Írd át a tartalmat az app valós adatkezelése szerint (SDK-k, vásárlás, hirdetés, fiók, analitika). Ez a legfontosabb lépés: a tájékoztató csak akkor ér valamit, ha pontosan azt írja le, amit az app csinál.
5. Frissítsd az `updated:` dátumot.

## Helyi előnézet

```bash
./scripts/serve.sh
```

Utána: http://localhost:4000/app-legal/

## Közzététel

A GitHub Pages a `main` ág gyökeréből építi az oldalt (Settings > Pages > Deploy from a branch > `main` / `/ (root)`). Push után 1-2 perc alatt frissül.
