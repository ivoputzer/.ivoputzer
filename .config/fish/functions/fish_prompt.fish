function git_branch_name_or_revision
  set -l branch (git symbolic-ref HEAD ^ /dev/null | sed -e 's|^refs/heads/||')
  set -l revision (git rev-parse HEAD ^ /dev/null | cut -b 1-7)
  if test (count $branch) -gt 0
    echo $branch
  else
    echo $revision
  end
end

function git_upstream_configured
  git rev-parse --abbrev-ref @"{u}" > /dev/null 2>&1
end

function git_behind_upstream
  test (git rev-list --right-only --count HEAD...@"{u}" ^ /dev/null) -gt 0
end

function git_ahead_of_upstream
  test (git rev-list --left-only --count HEAD...@"{u}" ^ /dev/null) -gt 0
end

function git_upstream_status
  set -l arrows
  if git_upstream_configured
    if git_behind_upstream
      set arrows "$arrows⇣"
    end
    if git_ahead_of_upstream
      set arrows "$arrows⇡"
    end
  end
  echo $arrows
end

function in_git_directory
  git rev-parse --git-dir > /dev/null 2>&1
end
function fish_prompt
  set_color (if test $status -eq 0
    echo green
  else
    echo red
  end)
  if in_git_directory
    pwd | sed 's|'(git rev-parse --show-toplevel)'\(.*\)|\1❯|g' | tr '\n' ' '
  else
    echo $PWD | sed 's|'$HOME'\(.*\)$|~\1❯|g' | tr '\n' ' '
  end
  set_color normal
end

function fish_right_prompt
  if in_git_directory
    set_color blue
    echo (git_branch_name_or_revision)
    set_color cyan
    echo (git_upstream_status)
  else
    set_color normal
    date +"%H:%M:%S"
  end
  set_color normal
end



# function fish_prompt
#   set prompt_path_max_length=30
#   # set prompt_default_end='❯'
#   # set prompt_root_end='❯❯❯'
#   # set prompt_success_color=$FG[071]
#   # set prompt_failure_color=$FG[124]
#   # set prompt_vcs_info_color=$FG[242]

# 	# test $SSH_TTY
#  #    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
#  #    test $USER = 'root'
#  #    and echo (set_color red)"#"
#  #    # Main
#  #    echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '

#  echo -n 'ivox'
# end

# set fish_git_dirty_color red
# set fish_git_not_dirty_color white

# function parse_git_branch
#   set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
#   set -l git_status (git status -s)

#   if test -n "$git_status"
#     echo (set_color normal)$branch(set_color $fish_git_dirty_color)●(set_color normal)
#   else
#     echo (set_color $fish_git_not_dirty_color)$branch(set_color normal)
#   end
# end

# function fish_prompt
#   set -l git_dir (git rev-parse --git-dir 2> /dev/null)
#   if test -n "$git_dir"
#     printf '%s%s%s [%s]' (set_color green) (prompt_pwd) (set_color normal) '❯' (set_color $fish_color_cwd) (parse_git_branch)
#   else
#     printf '%s%s%s' (set_color $fish_color_cwd) (prompt_pwd) (set_color green) '❯' (set_color normal)
#   end
# end

# function fish_right_prompt
#     printf '[%s%s]' (set_color normal) (date +%H:%M:%S)
# end

# # function fish_prompt
# #   printf " \n"
# #   set_color magenta
# #   printf '%s' (whoami)
# #   set_color normal
# #   printf ' at '

# #   set_color yellow
# #   __prompt_hostname
# #   # printf '%s' (hostname|cut -d . -f 1)
# #   set_color normal
# #   printf ' in '

# #   set_color $fish_color_cwd
# #   printf '%s' (prompt_pwd)
# #   set_color normal

# #   __git_ps1 ' on '(set_color magenta)'%s'
# #   set_color normal

# #   echo
# #   if test $VIRTUAL_ENV
# #     printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
# #   end
# #   printf '↪ '
# #   set_color normal
# # end

# # function __prompt_hostname
# #   if [ -f "$HOME/.hostname" ]
# #     cat "$HOME/.hostname" | tr "\n" ' '
# #   else
# #     printf '%s' (hostname|cut -d . -f 1)
# #   end
# # end

# # function fish_right_prompt
# #   set --local st $status
# #   if math "$st > 0" > /dev/null
# #     set_color white
# #     printf "[%d] " $st
# #     set_color normal
# #     printf "%s" (set_color red)"✘"(set_color normal)
# #   end
# # end

# # function __git_ps1
# #   set -l g (git rev-parse --git-dir ^/dev/null)
# #   if [ -n "$g" ]
# #     set -l r ""
# #     set -l b ""

# #     if [ -d "$g/../.dotest" ]
# #       if [ -f "$g/../.dotest/rebasing" ]
# #         set r "|REBASE"
# #       elseif [ -f "$g/../.dotest/applying" ]
# #         set r "|AM"
# #       else
# #         set r "|AM/REBASE"
# #       end

# #       set b (git symbolic-ref HEAD ^/dev/null)
# #     elseif [ -f "$g/.dotest-merge/interactive" ]
# #       set r "|REBASE-i"
# #       set b (cat "$g/.dotest-merge/head-name")
# #     elseif [ -d "$g/.dotest-merge" ]
# #       set r "|REBASE-m"
# #       set b (cat "$g/.dotest-merge/head-name")
# #     elseif [ -f "$g/MERGE_HEAD" ]
# #       set r "|MERGING"
# #       set b (git symbolic-ref HEAD ^/dev/null)
# #     else
# #       if [ -f "$g/BISECT_LOG" ]
# #         set r "|BISECTING"
# #       end

# #       set b (git symbolic-ref HEAD ^/dev/null)
# #       if [ -z $b ]
# #         set b (git describe --exact-match HEAD ^/dev/null)
# #         if [ -z $b ]
# #           set b (cut -c1-7 "$g/HEAD")
# #           set b "$b..."
# #         end
# #       end
# #     end

# #     if not test $argv
# #         set argv "%s"
# #     end

# #     set b (echo $b | sed -e 's|^refs/heads/||')

# #     printf $argv "$b$r" ^/dev/null
# #   end
# # end
