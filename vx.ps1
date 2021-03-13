$p=$args[0]

$lastDir = pwd

cd ~/sm

switch($p.ToLower()) {
    "--sm" {
        ruby v_checker.rb -c;
        Break
    }

    "--upg" {
        ruby upg.rb;
        Break
    }

    "-l" {
        bash sm.sh
    }
}

cd $lastDir
