require "optparse"
require "colorize"

$l = `& $Home/sm/vx.ps1 -l`
$c = `secman verx`

def _n()
  ly = $l.cyan.bold
  nr = "\nthere's a new release of secman is avalaible:".yellow
  ug = "to upgrade".yellow
  scoop = "scoop upgrade secman".cyan
  puts new_r = "#{nr} #{ly}#{ug} go to https://github.com/secman-team/secman/releases\nor if you install secman by scoop run #{scoop}"
end

def check()
  if $l + "\n" != $c
    _n
  end
end

OptionParser.new do |opts|
  opts.on("-c", "--check", "check the version") do |c|
    check()
  end
end.parse!
