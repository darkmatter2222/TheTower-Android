param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s84.txt')
# Parses the "Tier / Coin Bonus / Battle Conditions" table from the system/tiers payload and prints,
# per tier, the number of condition lines, the sum of their required levels, and the marginal sum.
$L = Get-Content $File
$line = ($L | Where-Object { $_.StartsWith('ROWS:') } | Select-Object -First 1)
$cells = $line.Substring(6).Trim() -split '\],\['
$rows = @()
foreach ($c in $cells) {
  $f = ($c -replace '[\[\]"]', '') -split ','
  $rows += ,$f
}
$prev = 0
foreach ($f in $rows) {
  $tier = $f[0]
  $bonus = $f[1]
  $bc = ($f[2..($f.Count - 1)] -join ',')
  if ($bc -eq 'None') {
    Write-Output ($tier + ' | bonus ' + $bonus + ' | lines 0 | sum 0 | marginal 0')
    $prev = 0
    continue
  }
  $names = [regex]::Matches($bc, "(?i)([^0-9]+?) Lvl (\d+)")
  $sum = 0
  $parts = @()
  foreach ($m in $names) {
    $v = [int]$m.Groups[2].Value
    $sum += $v
    $parts += ($m.Groups[1].Value.Trim() + '=' + $v)
  }
  Write-Output ($tier + ' | bonus ' + $bonus + ' | lines ' + $names.Count + ' | sum ' + $sum + ' | marginal ' + ($sum - $prev))
  Write-Output ('     ' + ($parts -join '  '))
  $prev = $sum
}
