require "optparse"
require "colorize"

$l = `verx secman-team/secman -l`
$c = `secman verx`

def _n()
  ly = $l.cyan.bold
  nr = "\nthere's a new release of secman is avalaible:".yellow
  up = "to update it run".yellow
  scoop = "scoop upgrade secman".cyan
  puts new_r = "#{nr} #{ly}#{up} go to https://github.com/secman-team/secman/releases\nor if you install secman by scoop run #{scoop}"
end

def check()
  if $l != $c
    _n
  end
end

OptionParser.new do |opts|
  opts.on("-c", "--check", "check the version") do |c|
    check()
  end
end.parse!
