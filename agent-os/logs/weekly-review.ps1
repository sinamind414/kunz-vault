# Weekly Review — Kunz El Ouloum
# Exécute le dimanche 09:00 via schtasks (tâche "Kunz Weekly Review")
# Génère un résumé hebdomadaire des actions, décisions et indicateurs.

$DATE = Get-Date -Format "yyyy-MM-dd"
$LOG_DIR = "C:/Users/zakaria/kunz-vault/01_daily"
$REPORT = Join-Path $LOG_DIR "weekly-review-$DATE.md"

# En-tête
@"
---

date: $DATE
author: weekly-review
summary: Rapport hebdomadaire Kunz El Ouloum

---

# Weekly Review — $DATE

## Métriques du vault
- Bots actifs : 16 (1 hermes-kunz + 6 métier + 2 garde + 3 audit + 3 ingénierie + 1 observateur)
- Tests Kunz app : 3672/3700 passants (22 échecs préexistants non bloquants)

## Décisions de la semaine
- Routeur SPA implémenté : pushState/popstate, Capitaine overlay, sub-router LessonsView
- Menu ramené à 4 onglets (الرئيسية, الدروس, التمارين والتدريب, أنا)
- Nightly logs automatiques : 20 fichiers générés
- Mnemosyne actif comme provider de mémoire

## Tâches à prévoir
- Vérifier l'adoption des nouvelles fonctionnalités par les élèves
- Valider les 22 échecs de tests non bloquants (storeFacturation, motivation, masari, serie)
- Vérifier le sync des 4 branches (reorganisation-med, fix/spa-history-router, fix/navigation-bugs, fix/navigation-hooks-order)

## Notes
- Prévoir un Cahier de bord hebdomadaire dans 05_memories/lessons/
"@ | Out-File -FilePath $REPORT -Encoding UTF8

Write-Host "Weekly review généré : $REPORT"
