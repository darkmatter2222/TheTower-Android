param()
# Checks the README's encoding: reads it as UTF-8 (no-BOM) and prints a few non-ASCII samples plus the byte count.
$p = 'README.md'
$bytes = [System.IO.File]::ReadAllBytes($p)
Write-Output ('bytes=' + $bytes.Length + ' first3=' + ($bytes[0..2] -join ','))
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$i = $txt.IndexOf([char]0x2014)
Write-Output ('emdash_at=' + $i)
$j = $txt.IndexOf([char]0x00E2)
Write-Output ('aacute_at=' + $j)
$line = ($txt -split "`r?`n" | Where-Object { $_.StartsWith('| [T006]') })[0]
Write-Output ('len=' + $line.Length)
Write-Output ('tailF5=' + $line.Substring($line.Length - 130))
