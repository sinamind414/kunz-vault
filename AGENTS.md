# AGENTS.md — Kunz Vault

Ce fichier définit les règles d’accès et les chemins autorisés pour les bots qui interagissent avec le vault Obsidian `C:/Users/zakaria/kunz-vault/`.

## 1. Principe général
- Les **fichiers protégés** ne doivent pas être modifiés sans décision humaine explicite.
- Aucune **donnée élève** ne peut être écrite dans le vault.
- Aucune **référence officielle** (programme, dates du Bac, barème) ne doit être inventée ; seules les sources citées dans `sources/` sont autorisées.

## 2. Accès par zone
| Zone | Accès bots | Remarques |
|---|---|---|
| `PAR/Projects/` | lecture seule | Contient les projets actifs et archivés |
| `PAR/Areas/` | lecture seule | Zones pérennes : architecture, pédagogie, ops |
| `PAR/Resources/` | lecture seule | Ressources référencées : SVT, design, infra |
| `PAR/Archive/` | lecture seule | Archive fermée |
| `inbox/` | lecture/écriture | Dépôt brut des bots avant classement |
| `daily/` | lecture/écriture | Logs quotidiens des bots |
| `memories/decisions/` | lecture/écriture | Décisions d’architecture et de produit |
| `memories/lessons/` | lecture/écriture | Leçons tirées des bugs et des audits |
| `agent-os/logs/` | lecture/écriture | Logs structurés des bots |
| `agent-os/skills/` | lecture seule | Skills partagés |
| `agent-os/rules/` | lecture seule | Règles fédérant les bots |
| `sources/` | lecture seule | Références officielles SVT et documents sources |

## 3. Règles de rédaction
- Utiliser le **RTL** pour les contenus arabes.
- Préserver la **fouḥṣā** pour les libellés UI officiels.
- Toute entrée dans `daily/` doit avoir un front matter minimal : `date`, `author`, `summary`.
- Toute décision dans `memories/decisions/` doit lier la note d’origine et le rapport d’implémentation.

## 4. Interdits
- Modifier un fichier protégé sans décision humaine explicite.
- Écrire des données élèves dans le vault.
- Ajouter une référence officielle non sourcée.
- Publier ou pousser sans validation du propriétaire.
