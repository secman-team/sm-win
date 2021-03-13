$directoyPath = "~/.secman"

if (Test-Path -path $directoyPath) {
    Remove-Item $directoyPath -Recurse -Force
}
