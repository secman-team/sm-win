$directoyPath="$HOME\sm";

if(!(Test-Path -path $directoyPath)) {  
   git clone https://github.com/secman-team/sm-win $HOME\sm  
}
