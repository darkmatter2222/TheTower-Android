param([string]$File, [string]$Needle)
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
for ($n = 0; $n -lt $ls.Count; $n++) {
  if ($ls[$n].Contains($Needle)) {
    $lead = ([regex]::Match($ls[$n], '^\s*')).Value.Length
    Write-Output ('line ' + ($n + 1) + ' leadSpaces=' + $lead + ' len=' + $ls[$n].Length + ' tail=[' + $ls[$n].Substring([Math]::Max(0, $ls[$n].Length - 30)) + ']')
  }
}
