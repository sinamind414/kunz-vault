# Rapport détaillé — Bots Kunz El Ouloum (SVT 3AS Bac Algérie)

**Date** : 2026-11-03
**Propriétaire** : hermes-kunz (chef d'équipe)
**Vault** : `C:/Users/zakaria/kunz-vault`

---

## 1. Stack technique

| Élément | Valeur |
|---|---|
| Modèle par défaut | `stepfun/step-3.7-flash:free` |
| Provider | Nous Portal (`nous`) |
| Fallback | `upstage/solar-mini4:free` |
| Memory provider | Mnemosyne (SQLite + FTS5) |
| Vault | `C:/Users/zakaria/kunz-vault/` |
| Git remote | https://github.com/sinamind414/kunz-vault |
| Node | v26.7.0 (local), Node 22 (CI) |
| Tests | Vitest + Jest |

---

## 2. Rôles des 16 bots

### 2.1 Orchestrateur

| | |
|---|---|
| **Bot** | `hermes-kunz` |
| **Rôle** | Chef d'équipe et seul interlocuteur du propriétaire. Répartit les tranches, valide les merges, applique les gardes, décide des priorités. |
| **Accès** | toutes les opérations de lecture sur le dépôt, validation des merges |
| **Interdits** | publier/pousser sans accord du propriétaire |

### 2.2 Audit & Qualité

| Bot | Rôle principal | Interdit |
|---|---|---|
| `scout` | Cartographie, lecture seule. Détecte les bugs avant correction. | Modifier un fichier |
| `forge` | Dernier code seulement. Branche dédiée. Un chantier par fois. | Modifier un fichier protégé sans décision humaine |
| `auditeur` | Vérifications : EXÉCUTÉE/EXAMINÉE, Node/OS/TZ, garde-fous pédagogiques et de confidentialité. | Publier un résultat de notation |
| `journal` | Trace systématique : décisions humaines, rapports, fichiers modifiés par Forge. | Écrire dans le code ou la config du dépôt |

### 2.3 Métier & Pédagogie SVT

| Bot | Rôle principal | Livrables |
|---|---|---|
| `atelier-pedagogique` | Production de contenu : quiz, résumé, remédiation. | QCM, résumés, exercices |
| `diagnostic` | Diagnostic par compétence : évalue la maîtrise de l'élève, calque le barème officiel. | Rapports de diagnostic |
| `prochaine-action` | Parcours personnalisé : propose le contenu suivant selon le niveau de l'élève. | Fil d'activité personnalisé |
| `rappels-espaces` | Planification et suivi des rappels : 4 états (éligible, planifié, présenté, retesté). | Journal de rappels, calcul des échéances |
| `programme-3as` | Référence officielle du programme SVT 3AS Algérie. | Programme, consignes de corrects |
| `bot-svt` | Contenu SVT générique : cours, schémas, explications. | Fiches de cours, ressources |

### 2.4 Gardes & Conformité

| Bot | Rôle principal | Interdit |
|---|---|---|
| `garde-correction` | Vérification des barèmes, cohérence des notes, variante acceptée. | Calibrage sur les notes de professeurs, point sur similarité sémantique |
| `garde-eleve` | Protection des données élèves, accès autorisés, confidentialité. | Envoi de données élèves vers un tiers |

### 2.5 Ingénierie & Transverse

| Bot | Rôle principal | Accès |
|---|---|---|
| `forge` | Modifier le code de l'application. | Tous les fichiers de `src/` |
| `astra` | Ingénierie générale : architecture, build, outils transverses. | Architecture, CI, scripts |
| `bot-kunz-el-ouloum` | Bon fonctionnement général : monitoring, tickets, jalons. | Jauge, logs, tickets |

### 2.6 Observateur

| Bot | Rôle principal | Moyen |
|---|---|---|
| `eleve` | Observation UI : scroll, clips, comportement d'un élève. | Screenshots, rapport de bugs visuels, logs de navigation |

---

## 3. Structure du vault

```
kunz-vault/
├── AGENTS.md                    # Règles d'accès par zone
├── README.md
├── README.md
├── dashboard.md                 # Vue d'ensemble et stats
├── 00_inbox/                    # Dépôt brut avant classement
├── 01_daily/                    # Logs quotidiens (YYYY-MM-DD.md)
├── 02_projects/                 # Projets actifs
├── 03_areas/                    # Zones pérennes
│   └── Architecture.md
├── 04_resources/                # Références SVT, design, barème
├── 05_memories/
│   ├── decisions/               # Décisions d'architecture
│   └── lessons/                 # Leçons tirées des bugs
├── 06_archive/                  # Archive fermée
├── agent-os/
│   ├── logs/                    # Logs des bots
│   ├── rules/                   # règles de gouvernance
│   └── skills/                  # Skills partagés
├── sources/                     # Références officielles SVT
└── _index.md                    # Index par dossier
```

---

## 4. Règles de gouvernance

| Règle | Statut |
|---|---|
| Aucune donnée élève vers un tiers | ✅ Respectée |
| Aucune référence officielle inventée | ✅ Respectée |
| Aucune publication sans propriétaire | ✅ Respectée |
| Aucune modification fichier protégé sans décision humaine | ✅ Respectée |
| Backup vault sur GitHub | ✅ Activé |
| Tâche nightly logs | ✅ 21h00 (Windows Task Scheduler) |
| Weekend review | ⏳ À créer |

---

## 5. Prochaines actions

| # | Tâche | Étape |
|---|---|---|
| 1 | Supprimer les 6 dossiers `.old` | Fermer Hermes, exécuter `agent-os/logs/cleanup-generic-bots.bat` |
| 2 | Enrichir `sources/programme-3AS.md` | Ajouter les références sourcées |
| 3 | Tâche weekly review | Créer la tâche planifiée |
| 4 | Connecter Hindsight | Déployer le serveur Docker local |
| 5 | Tester les rappels Mnemosyne | Exécuter un rappel sur un décis pris |

---

*Report généré le 2026-11-03 — Propriétaire : hermes-kunz*
