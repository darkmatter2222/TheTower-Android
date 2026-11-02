param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s91.txt', [int]$Line = 0, [switch]$Steps)
# Comma-aware parser for one ROWS: line of a fetch-hub dump (thousands separators live inside the
# quoted cells, so a plain -split ',' breaks "3,000,000" into pieces).
# Prints one row per output line, and with -Steps the additive step of every value column.
$L = Get-Content $File
$rows = $L[$Line - 1]
if (-not $rows.StartsWith('ROWS:')) { Write-Output ('line ' + $Line + ' is not a ROWS line'); exit 1 }
$body = $rows.Substring(6).Trim()
$rowMatches = [regex]::Matches($body, '\["(.*?)"\]')
foreach ($rm in $rowMatches) {
  $cells = @($rm.Groups[1].Value -split '","')
  Write-Output ($cells -join ' | ')
  if ($Steps -and $cells.Count -ge 5) {
    $nums = @()
    foreach ($c in $cells) {
      $t = ($c -replace '[xX%]', '' -replace ',', '')
      if ($t -match '^-?\d+(\.\d+)?$') { $nums += [double]$t }
    }
    if ($nums.Count -ge 3) {
      $d = @()
      for ($j = 1; $j -lt $nums.Count; $j++) { $d += [math]::Round($nums[$j] - $nums[$j - 1], 4) }
      Write-Output ('     deltas: ' + ($d -join ', '))
    }
  }
}
