param()
# Prints the raw region of README from "Rev 24" forward for 320 characters.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$i = $txt.IndexOf('Rev 24')
Write-Output ('idx=' + $i)
$seg = $txt.Substring($i, 340)
Write-Output ('[' + $seg + ']')
