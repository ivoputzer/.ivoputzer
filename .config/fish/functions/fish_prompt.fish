function fish_prompt -d 'write out the main prompt'
  set_color (test $status -eq 0; and echo green; or echo red)
  if git rev-parse --show-toplevel > /dev/null 2>&1 # ?has_git_root
    string replace (git rev-parse --show-toplevel) '' (pwd) | tr -d '\n' | tr -d '/'
  else
    echo -n (prompt_pwd)
  end
  echo -n '❯ '
  set_color normal
end

function fish_right_prompt -d 'write out the right prompt'
  set_color black
  if git rev-parse --show-toplevel > /dev/null 2>&1 # ?has_git_root
    echo -n (basename (git rev-parse --show-toplevel))'/git/'
    if test (count (git symbolic-ref HEAD ^ /dev/null)) -gt 0 # ?is_on_git_branch
      git symbolic-ref HEAD ^ /dev/null | sed -e 's|^refs/heads/||'
    else
      git rev-parse HEAD ^ /dev/null | cut -b 1-7
    end
    if git rev-parse --abbrev-ref @"{u}" > /dev/null 2>&1 # ?has_upstream
      set_color yellow
      if test (git rev-list --right-only --count HEAD...@"{u}" ^ /dev/null) -gt 0 # ?behind_upstream
        echo -n '/behind'
      end
      set_color blue
      if test (git rev-list --left-only --count HEAD...@"{u}" ^ /dev/null) -gt 0 # ?ahead_of_upstream
        echo -n '/ahead'
      end
    end
  else if test -z (dotfiles status --porcelain > /dev/null 2>&1)
    set_color yellow
    echo "[dotfiles]"
  else
    set_color yellow
    echo -n '['(date +'%H%M%S')']' # update fancy clock automatically
  end
  set_color normal
end
