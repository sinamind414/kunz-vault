---
date: 2026-11-01
author: hermes-kunz
summary: Réduction du menu principal de 6 à 4 onglets
---

# Menu 4 onglets

## Décision
Réduire `PRIMARY_NAV` de 6 à 4 onglets :
- retained: الرئيسية
- retained: الدروس
- retained: التمارين والتدريب
- retained: أنا
- removed: مفتاح المنهجية
- removed: مراجعة

## Raisons
- Surcharge cognitive constatée par Élève
- Méthodologie accessible depuis inside views, pas besoin d’onglet dédié

## Implémentation
- `src/App.tsx` : `PRIMARY_NAV` réduit, imports nettoyés
- Labels alignés sur `MIFTAH_NAME_AR`

## Statut
Livré sur `reorganisation-med` (commit db3c13d)
