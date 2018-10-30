# robertodonetta.ch Docker

docker-compose-port von robertodonetta.ch

## Installation

Alles installieren und starten: `make`<br>
Dies geht davon aus dass alle web-sourcen unter
`source/web/` und ein Datenbankdump unter `source/db_import/rdonetta_web.sql` liegt.

Diese Daten können zuvor mit `make fetch-sources` vom prod-server
geholt werden.

## Ports

Die Webapp ist unter Port `8060` und MariaDB unter Port `4060` und phpmyadmin unter `3060` verfügbar.


## Konfiguration

Alle Relevanten Einstellungen können im File `settings.env` angepasst werden.
