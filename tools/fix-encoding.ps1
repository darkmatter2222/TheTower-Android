param([string]$Path = 'README.md')
# Inverts one layer of double-encoded UTF-8 (the ANSI-decode + UTF8-reencode pair used by the earlier patch scripts).
# A double-encoded char is the original's UTF-8 bytes rendered as cp1252 letters, so: take each char's cp1252 byte,
# gather consecutive bytes that form a valid UTF-8 sequence, and decode that sequence. ASCII and already-correct text
# pass through unchanged, so mixed files are handled in one pass.
$txt = [System.IO.File]::ReadAllText($Path, [System.Text.Encoding]::UTF8)
$cp = [System.Text.Encoding]::GetEncoding(1252)
$u8 = New-Object System.Text.UTF8Encoding($false, $true)
$chs = $txt.ToCharArray()
$sb = New-Object System.Text.StringBuilder
$i = 0
$fixed = 0
while ($i -lt $chs.Length) {
  $c = $chs[$i]
  $code = [int]$c
  if ($code -le 0x7F) { [void]$sb.Append($c); $i++; continue }
  $lead = @($cp.GetBytes([string]$c))
  if ($lead.Count -ne 1 -or $lead[0] -lt 0xC2 -or $lead[0] -gt 0xF4) { [void]$sb.Append($c); $i++; continue }
  $len = 1
  if ($lead[0] -ge 0xC2 -and $lead[0] -le 0xDF) { $len = 2 }
  elseif ($lead[0] -le 0xEF) { $len = 3 }
  else { $len = 4 }
  $bytes = New-Object 'System.Collections.Generic.List[byte]'
  $bytes.Add([byte]$lead[0])
  $k = $i + 1
  $ok = $true
  while ($bytes.Count -lt $len) {
    if ($k -ge $chs.Length) { $ok = $false; break }
    $b2 = @($cp.GetBytes([string]$chs[$k]))
    if ($b2.Count -ne 1 -or $b2[0] -lt 0x80 -or $b2[0] -gt 0xBF) { $ok = $false; break }
    $bytes.Add([byte]$b2[0]); $k++
  }
  if (-not $ok) { [void]$sb.Append($c); $i++; continue }
  try { $dec = $u8.GetString($bytes.ToArray()) } catch { $dec = $null }
  if ([string]::IsNullOrEmpty($dec) -or $dec.Contains([char]0xFFFD)) { [void]$sb.Append($c); $i++; continue }
  [void]$sb.Append($dec)
  $fixed++
  $i = $k
}
[System.IO.File]::WriteAllText($Path, $sb.ToString(), $u8)
$chk = [System.IO.File]::ReadAllText($Path, [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('sequencesFixed=' + $fixed + ' len=' + $chk.Length + ' a-acute-left=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count +
  ' rows=' + $rows.Count + ' badRows=' + $bad)
$one = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
Write-Output ('t006head=' + $one.Substring(0, [Math]::Min(180, $one.Length)))
Write-Output ('t006tail=' + $one.Substring([Math]::Max(0, $one.Length - 180)))
