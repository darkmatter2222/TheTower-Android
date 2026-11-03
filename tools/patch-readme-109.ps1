param()
# Iteration 109: T005 Rev 4 in the ranked table (the content timeline).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$old = '(arith., Rev 3)'
$new = '(arith., Rev 4: the content timeline from all 27 version pages - Def % cap 90 -> 98 at **v0.22**, ' +
       'milestone gates only from **v0.18**, Elite Cells = lab speed at **v0.23**, Dissonance **5x/3x** = the ' +
       '**v0.28** hotfix, tier map T10/T11/T12/T13/T14-15/T16-18/T19-21 at v0.4.0/0.8/0.14/0.18/0.20/0.24/0.27, ' +
       'derived slot cap 19 -> H061)'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T005]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($a -ne 1) { Write-Output ('anchor count=' + $a + ' f5tail=' + $f[5].Substring([Math]::Max(0, $f[5].Length - 90))); exit 1 }
  $lines[$n] = ($f -join '|')
  $done++
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$R = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith('| [T005]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('rows=' + $done + ' open=' + $o + ' close=' + $c + ' r4=' + $R.Contains('(arith., Rev 4:') +
  ' totalRows=' + $rows.Count + ' badRows=' + $bad + ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
