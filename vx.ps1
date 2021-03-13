$p=$args[0]

$lastDir = pwd

cd ~/sm

switch($p.ToLower()) {
    "--sm" {
        ruby v_checker.rb -c
    }

    "--upg" {
        ruby upg.rb
    }

    default {
        bash vx $p
    }
}

cd $lastDir
