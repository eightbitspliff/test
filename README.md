# Neon Tetris – Android (Pixel 7a)

Tetris mit aufwendiger Neon-Grafik für Android: leuchtende Glas-Blöcke, Partikel-Explosionen,
Schockwellen, Screen-Shake, Hard-Drop-Lichtspuren, animierter Nebel- und Sternenhintergrund mit
Synthwave-Gitter, ein neues Farbthema pro Level, Synth-Soundeffekte, Chiptune-Musik (Korobeiniki) und Haptik.

## Installation auf dem Pixel 7a
1. Auf dem Handy **Releases → `latest` → `NeonTetris.apk`** herunterladen
   (GitHub Actions baut die APK bei jedem Push automatisch).
2. APK öffnen → Installation aus unbekannten Quellen für Browser/Dateimanager erlauben → Installieren.

## Steuerung
| Geste / Button | Aktion |
|---|---|
| Wischen links/rechts | Bewegen |
| Tippen rechte / linke Bildschirmhälfte | Drehen im / gegen den Uhrzeigersinn |
| Langsam nach unten ziehen | Soft-Drop |
| Schnell nach unten wischen | Hard-Drop |
| Nach oben wischen | Hold |
| Zurück-Taste | Pause |

Zusätzlich gibt es eine Button-Leiste (◀ ▼ ▶ · HOLD ⤓ · ⟲ ⟳) mit Auto-Repeat.

## Regeln
Guideline-Tetris: SRS-Rotation mit Wall-Kicks, 7-Bag, 5er-Vorschau, Hold, Ghost-Piece, Lock-Delay
(500 ms, 15 Resets), T-Spins (inkl. Mini), Back-to-Back, Combos, Perfect Clear, Level-Up alle 10 Linien,
Top-5-Rangliste.

## Aufbau
- `app/src/main/assets/index.html` – komplette Spiel-Engine (Canvas 2D + WebAudio), auch im Browser spielbar
- `app/src/main/java/com/neon/tetris/MainActivity.kt` – Vollbild-WebView, Vibrations-Bridge, Zurück-Taste
- `.github/workflows/android.yml` – baut die Release-APK und veröffentlicht sie als Release `latest`

Lokal bauen (Android SDK nötig): `./gradlew assembleRelease`

## Signierung
Ohne weitere Einstellungen wird die APK mit einem Debug-Schlüssel signiert. Der kann sich zwischen
CI-Läufen ändern; dann muss die App vor einem Update deinstalliert werden.
Für stabile Updates einen eigenen Keystore als Repository-Secrets hinterlegen:
`KEYSTORE_BASE64` (Keystore als Base64), `SIGNING_STORE_PASSWORD`, `SIGNING_KEY_ALIAS`, `SIGNING_KEY_PASSWORD`.
