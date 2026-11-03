param()
# Locates which prefix of the T025 status string is present in README.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$full = '**Verified** (arith., Rev 2: the 27-line + nine-page closure, the four stages, the fleet bill and the 52-week split, `tools/ledger-year1.ps1` / `1b` / `1c`)'
for ($k = 10; $k -le $full.Length; $k += 10) {
  $pre = $full.Substring(0, $k)
  $c = ([regex]::Matches($txt, [regex]::Escape($pre))).Count
  Write-Output ($k.ToString() + ' -> ' + $c)
  if ($c -eq 0) {
    Write-Output ('last good prefix: [' + $full.Substring(0, $k) + ']')
    Write-Output ('next 40 chars of the file region: [' + $txt.Substring($txt.IndexOf($full.Substring(0, $k - 10)), $k - 10 + 60) + ']')
    break
  }
}
