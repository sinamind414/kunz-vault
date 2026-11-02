---
date: 2026-11-01
author: hermes-kunz
summary: Choix du routeur SPA minimal par hash + popstate pour Kunz El Ouloum
---

# Routeur SPA minimal

## Décision
Implémenter un routeur SPA par hash (`#tab`) avec `pushState`/`popstate` pour support du bouton retour navigateur.

## Raisons
- Application existante en SPA sans historique
- Besoin de back-button natif
- Sous-routeur الدروس pour history.back() interne

## Implémentation
- `navigateToTab(tab)` dans `src/App.tsx`
- `TAB_ROUTE` mapping tab → hash
- `pushLessonHistory()` dans `src/components/LessonsView.tsx`

## Statut
Livré sur `reorganisation-med` (commits 43e1940, 6f0a24b)
