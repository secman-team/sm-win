$directoyPath = "~/.secman"
$bkPath = "~/.secman.bk"

if (Test-Path -path $directoyPath) {
    Remove-Item $directoyPath -Recurse -Force
}

if (Test-Path -path $bkPath) {
    Remove-Item $bkPath -Recurse -Force
}
