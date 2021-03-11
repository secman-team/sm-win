$directoyPath="$HOME\sm";

if(!(Test-Path -path $directoyPath)) {  
   echo "sm folder was not found"
   echo "run secman fix"
}
