# Vault Rules — Kunz El Ouloum

Ce fichier complète `AGENTS.md` pour les bots Hermes.

## Accès vault
- Vault : `C:/Users/zakaria/kunz-vault/`
- `00_inbox/` : lecture/écriture (dépôt brut)
- `01_daily/` : lecture/écriture (logs quotidiens)
- `02_projects/` : lecture seule
- `03_areas/` : lecture seule
- `04_resources/` : lecture seule
- `05_memories/decisions/` : lecture/écriture (décisions)
- `05_memories/lessons/` : lecture/écriture (leçons)
- `agent-os/logs/` : lecture/écriture (logs bots)
- `agent-os/skills/` : lecture seule
- `agent-os/rules/` : lecture seule
- `sources/` : lecture seule

## Règles d’écriture
- Tout fichier non classé → `00_inbox/`
- `01_daily/` : front matter obligatoire (`date`, `author`, `summary`)
- `05_memories/decisions/` : lier la note d’origine et le rapport d’implémentation
- Interdits : données élèves, références officielles non sourcées, modification fichier protégé sans décision humaine.

## Nightly logs
Chaque bot écrit son journal quotidien dans `01_daily/YYYY-MM-DD-<bot>.md` une fois par jour.
