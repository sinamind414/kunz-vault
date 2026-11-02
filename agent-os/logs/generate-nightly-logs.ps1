$ErrorActionPreference = 'SilentlyContinue'
$date = Get-Date -Format "yyyy-MM-dd"
$vault = "C:\Users\zakaria\kunz-vault"
$daily = Join-Path $vault "01_daily"
$template = Join-Path $vault "agent-os\rules\nightly-template.md"

$bots = @(
  "hermes-kunz",
  "scout",
  "forge",
  "auditeur",
  "journal",
  "eleve",
  "astra",
  "bot-kunz-el-ouloum",
  "bot-svt",
  "programme-3as",
  "corpus-servi",
  "garde-eleve",
  "diagnostic",
  "prochaine-action",
  "atelier-pedagogique",
  "garde-correction",
  "rappels-espaces"
)

foreach ($bot in $bots) {
  $path = Join-Path $daily ("{0}-{1}.md" -f $date, $bot)
  if (-not (Test-Path $path)) {
    $content = Get-Content $template -Raw
    $content = $content -replace '\{\{DATE\}\}', $date
    $content = $content -replace '\{\{BOT_NAME\}\}', $bot
    Set-Content -Path $path -Value $content -Encoding UTF8
  }
}
