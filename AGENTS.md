# AGENTS.md — Kunz Vault

Ce fichier définit les règles d’accès et les chemins autorisés pour les bots qui interagissent avec le vault Obsidian `C:/Users/zakaria/kunz-vault/`.

## 1. Principe général
- Les **fichiers protégés** ne doivent pas être modifiés sans décision humaine explicite.
- Aucune **donnée élève** ne peut être écrite dans le vault.
- Aucune **référence officielle** (programme, dates du Bac, barème) ne doit être inventée ; seules les sources citées dans `sources/` sont autorisées.

## 2. Accès par zone
| Zone | Accès bots | Remarques |
|---|---|---|
| `00_inbox/` | lecture/écriture | Dépôt brut avant classement |
| `01_daily/` | lecture/écriture | Logs quotidiens (`YYYY-MM-DD.md`) |
| `02_projects/` | lecture seule | Projets actifs et archivés |
| `03_areas/` | lecture seule | Zones pérennes : architecture, pédagogie, ops |
| `04_resources/` | lecture seule | Ressources référencées : SVT, design, infra |
| `05_memories/decisions/` | lecture/écriture | Décisions d’architecture et de produit |
| `05_memories/lessons/` | lecture/écriture | Leçons tirées des bugs et des audits |
| `agent-os/logs/` | lecture/écriture | Logs structurés des bots |
| `agent-os/skills/` | lecture seule | Skills partagés |
| `agent-os/rules/` | lecture seule | Règles fédérant les bots |
| `sources/` | lecture seule | Références officielles SVT et documents sources |
| `06_archive/` | lecture seule | Archive fermée |

## 3. Memory provider
- Provider actif : **Mnemosyne** (local-first, SQLite + FTS5)
- Chemin média autorisé : `C:\Users\zakaria\kunz-vault` (via `MNEMOSYNE_MEDIA_ALLOWED_PATHS`)
- Built-in memory (`MEMORY.md` / `USER.md`) reste actif en parallèle

## 4. Règles de rédaction
- Utiliser le **RTL** pour les contenus arabes.
- Préserver la **fouḥṣā** pour les libellés UI officiels.
- Toute entrée dans `daily/` doit avoir un front matter minimal : `date`, `author`, `summary`.
- Toute décision dans `05_memories/decisions/` doit lier la note d’origine et le rapport d’implémentation.

## 5. Interdits
- Modifier un fichier protégé sans décision humaine explicite.
- Écrire des données élèves dans le vault.
- Ajouter une référence officielle non sourcée.
- Publier ou pousser sans validation du propriétaire.
