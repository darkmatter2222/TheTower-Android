param()
# Iteration 116 (part c): staged UW workshop buy (L1-5 / L1-10 / L1-15 / all) in weeks per band.
$stages = @(@(11461,'to L5'), @(25045,'to L10'), @(49194,'to L15'), @(244542,'all 27 lines'))
foreach ($s in $stages) {
  $line = $s[1] + ': ' + $s[0] + ' stones ->'
  foreach ($w in @(80, 154, 432, 1080, 6400, 20160)) {
    $line += ' ' + [Math]::Round($s[0] / $w, 1) + 'w@' + $w
  }
  Write-Output $line
}
Write-Output ('stages re-add check: 11461 + (25045-11461) + (49194-25045) + (244542-49194) = ' +
  (11461 + (25045 - 11461) + (49194 - 25045) + (244542 - 49194)))
Write-Output ('per-stage marginal: L1-5 = 11461 ; L6-10 = ' + (25045 - 11461) + ' ; L11-15 = ' +
  (49194 - 25045) + ' ; L16-cap = ' + (244542 - 49194))
Write-Output ('UW+ 179240 as a fraction of the 244542 basic bill = ' + [Math]::Round(179240.0 / 244542.0, 3))
Write-Output ('card mastery stones 28500 : at 432/wk = ' + [Math]::Round(28500.0 / 432.0, 1) +
  ' weeks ; at 1080 = ' + [Math]::Round(28500.0 / 1080.0, 1))
Write-Output ('910 sync vs the L1-5 stage: ' + [Math]::Round(11461.0 / 910.0, 2) + 'x ; vs full bill: ' +
  [Math]::Round(244542.0 / 910.0, 1))
