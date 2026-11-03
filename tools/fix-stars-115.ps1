param()
# Repairs double-encoded stars in README: the sequence U+00E2 U+02DC U+2026 -> U+2605.
$u8 = New-Object System.Text.UTF8Encoding($false)
$t = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$bad = ([string][char]0x00E2) + ([string][char]0x02DC) + ([string][char]0x2026)
$good = [string][char]0x2605
$n = ([regex]::Matches($t, [regex]::Escape($bad))).Count
$t2 = $t.Replace($bad, $good)
# also the 2-byte variant (E2 98 85 decoded as CP1252 pairs) if present
$n2 = ([regex]::Matches($t2, [string][char]0x00E2)).Count
[System.IO.File]::WriteAllText('README.md', $t2, $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad2 = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad2++ } }
Write-Output ('triples replaced=' + $n + ' remaining e2=' + $n2 + ' rows=' + $rows.Count + ' badRows=' + $bad2)
