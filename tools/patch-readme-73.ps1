# One-shot patch for iteration 73: extend the T002 and T011 rows in README.md.
$p = 'README.md'
$L = Get-Content $p
for ($n = 0; $n -lt $L.Count; $n++) {
    $s = $L[$n]
    if ($s.StartsWith('| [T002]')) {
        $add = '; the per-tier build is now printed (Blender/Thorns tier-push, Tier-2 coin multiplier 1.8x, mission coins 25 at T1 to 500 000 000 at T18, CPW early / CPK late, Thorns >= 5 % then Def Abs, Plasma 54 % + one Thorns tick and Energy Net x20 for bosses, 31-hit Scatter chain, Lv.9 Extra Orbs 1.4x, Range lab 1x-4x set outside battle)'
        $i = $s.LastIndexOf('**Verified** (arith., Rev 2)')
        $tail = ($s.Substring($i)) -replace 'Rev 2', 'Rev 3'
        $L[$n] = $s.Substring(0, $i - 3) + $add + ' | ' + $tail
        Write-Output ('T002 tail -> ' + $L[$n].Substring($L[$n].Length - 90))
    }
    if ($s.StartsWith('| [T011]')) {
        $add = '; printed perk values (200-wave cadence, stacks 3 / 1 / 5, Health Regen x45.6, damage only +80 %) and the 16.111x defense identity from 0.145 / 0.009'
        $i = $s.LastIndexOf('**Verified** (arith.)')
        $tail = ($s.Substring($i)) -replace '\*\*Verified\*\* \(arith\.\)', '**Verified** (arith., Rev 5)'
        $L[$n] = $s.Substring(0, $i - 3) + $add + ' | ' + $tail
        Write-Output ('T011 tail -> ' + $L[$n].Substring($L[$n].Length - 90))
    }
}
Set-Content -Path $p -Value $L -Encoding utf8
$M = Get-Content $p
$bad = 0
for ($n = 0; $n -lt $M.Count; $n++) {
    if ($M[$n].StartsWith('| [T0')) {
        $c = ($M[$n].ToCharArray() | Where-Object { $_ -eq '|' }).Count
        if ($c -ne 7) { Write-Output ('BAD ROW ' + $n + ' pipes=' + $c); $bad++ }
    }
}
Write-Output ('bad rows = ' + $bad)
