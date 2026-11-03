param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T006-lab-queue-packing.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('fourth time')) {
    $s = $lines[$i]
    $out = 'len=' + $s.Length + ' codes='
    foreach ($ch in $s.ToCharArray()) { $out += (([int]$ch).ToString() + ',') }
    Write-Output (($i + 1).ToString() + ' ' + $out)
  }
  if ($lines[$i].Contains('the **Milestones** badge') -and $i -gt 300) { Write-Output (($i + 1).ToString() + ' CHK:' + $lines[$i].Substring(0, [Math]::Min(40, $lines[$i].Length))) }
}
