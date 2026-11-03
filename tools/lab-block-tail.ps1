param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s102u.txt')
# Tail detail: cumulative at each 5-level mark, the 96-99 block, and the +10/level identity against the
# printed `Starting Cash` ladder (whose printed cells are 40 ... 6 175).
$txt = [System.IO.File]::ReadAllText($File)
$mm = [regex]::Match($txt, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
$rows = [regex]::Matches($mm.Groups[2].Value, '\[([^\]]*)\]')
$flat = @()
foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
$n = [math]::Floor($flat.Count / 4)
$cost = @(); for ($r = 0; $r -lt $n; $r++) { $cost += [double]($flat[$r * 4 + 2] -replace ',', '') }
$cum = 0.0
$marks = @(5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 99)
for ($k = 0; $k -lt $n; $k++) {
  $cum += $cost[$k]
  if ($marks -contains ($k + 1)) { Write-Output ('  cum to L' + ($k + 1) + ' = ' + ('{0:N0}' -f $cum)) }
}
$cum95 = 0.0; for ($k = 0; $k -lt 95; $k++) { $cum95 += $cost[$k] }
$cum99 = 0.0; for ($k = 0; $k -lt 99; $k++) { $cum99 += $cost[$k] }
Write-Output ('  L96-99 block = ' + ('{0:N0}' -f ($cum99 - $cum95)) + '   (4 levels, ' + ('{0:N0}' -f (($cum99 - $cum95) / 4)) + ' per level)')
Write-Output ('  threshold check: 40 x block   L21-25=' + ('{0:N0}' -f (40 * 350702)) + '  L26-30=' + ('{0:N0}' -f (40 * 612218)) +
  '  L31-35=' + ('{0:N0}' -f (40 * 973408)) + '  L36-40=' + ('{0:N0}' -f (40 * 1447847)))
Write-Output ('  Starting Cash identity: 111 682 359 + 99 x 10 = ' + ('{0:N0}' -f ($cum99 + 990)) + '  (printed 111 683 349)')
Write-Output ('  full-lab check Utility trio 17.42 T: saved = 0.495 x B = ' + ('{0:N0}' -f (0.495 * 1.742e13)) +
  '  vs bill 111 682 359  => ' + ('{0:0.#}' -f ((0.495 * 1.742e13) / $cum99)) + 'x')
Write-Output ('  full-lab check Defense 10.767 M: ' + ('{0:0.000}' -f ((0.495 * 10767000) / $cum99)) + 'x   Attack 22.88 M: ' +
  ('{0:0.00}' -f ((0.495 * 22880000) / $cum99)) + 'x   Utility 4-lines 34.29 M: ' + ('{0:0.00}' -f ((0.495 * 34290000) / $cum99)) + 'x')
