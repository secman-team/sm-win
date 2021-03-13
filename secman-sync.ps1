$p=$args[0]

$SECDIR = "$HOME\.secman"
$SM_GH_UN = git config user.name
$lastDir = pwd

function CSI {
    git add .
    git commit -m "new .secman repo"
    git branch -M trunk
    git remote add origin https://github.com/$SM_GH_UN/.secman
    git push -u origin trunk
}

switch ($p.ToLower()) {
    {($_ -eq "-h") -or ($_ -eq "--help")} {
        echo "Flags:"
        echo "  -h | --help: help about any command"
        echo "Commands:"
        echo "  sy | sync: create private github repo and sync your passwords on it by git"
        echo "  cn | clone: clone .secman repo"
        echo "  ph | push: push and commit a new secret"
        echo "  pl | pull: pull secret/s"

        Break
    }

    {($_ -eq "sy") -or ($_ -eq "sync")} {
        cd $SECDIR

        git init

        echo "# My secman passwords - $SM_GH_UN" >> $SECDIR\README.md

        gh repo create $SM_GH_UN/.secman -y --private

        CSI
        
        cd $lastDir

        Break
    }

    {($_ -eq "cn") -or ($_ -eq "clone")} {
        git clone https://github.com/$SM_GH_UN/.secman $SECDIR;
        Break
    }

    {($_ -eq "ph") -or ($_ -eq "push")} {
        cd $SECDIR

        if (Test-Path -path .git) {
            git add .
            git commit -m "new change"
            git push
        }

        cd $lastDir
        Break
    }

    {($_ -eq "pl") -or ($_ -eq "pull")} {
        cd $SECDIR
        git pull
        cd $lastDir
        Break
    }

    default {
        echo "For an overview of the command, execute:"
        echo "~/sm/secman-sync -h"
    }
}
