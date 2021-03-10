$directoyPath="$HOME\.secman.bk";
$bkPath="$HOME\.secman.bk"

if((Test-Path -path $directoyPath)) {  
    Remove-Item $directoyPath
}

if((Test-Path -path $bkPath)) {  
    Remove-Item $bkPath
}
