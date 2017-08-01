set -x JENV_ROOT "/usr/local/opt/jenv"
set -x PATH "/usr/local/opt/jenv/shims" $PATH

command jenv rehash 2>/dev/null

set -x JENV_LOADED 1
set -e JAVA_HOME

function jenv
  set cmd $argv[1]
  set arg ""
  if test (count $argv) -gt 1 # fish first array index is 1, great!
    set arg $argv[2..-1]
  end
  switch "$cmd"
    case enable-plugin rehash shell shell-options
      set script (jenv "sh-$cmd" "$arg")
      eval $script
    case '*'
        command jenv $cmd $arg
    end
end


