set -x PATH $HOME/bin $PATH /usr/local/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /Library/TeX/texbin /Users/oleksiileontiev/google-cloud-sdk/bin $HOME/for/forpython/miscutils $HOME/.homebrew/bin
set -x EDITOR vim
set -x SHELL /usr/local/bin/fish

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/oleksiileontiev/google-cloud-sdk/path.fish.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/oleksiileontiev/google-cloud-sdk/completion.fish.inc'
#

#alias rm="rm-p -i"
alias egit="env LC_ALL=en_US git"

alias npmr="npm run"
alias npmb="npm run build"
alias npmi="npm install"
alias npmig="npm install -g"
alias npmci="npm ci"
alias npmst="npm start"
alias npmsv="npm run serve"
alias print_current_commit_hash="git rev-parse HEAD"
alias gsutil="/Users/nailbiter/Downloads/google-cloud-sdk/bin/gsutil"

function git-fixup
  git commit -a --fixup (git log --format=oneline --decorate=short|fzf --layout=reverse|awk -F' ' '{print $1}')
end
function gitr
  git rebase -i (git log --format=oneline --decorate=short|fzf --layout=reverse|awk -F' ' '{print $1}')
end

function random_name
  perl -e 'use String::Random qw( random_regex ); print random_regex("[A-Za-z][_A-Za-z0-9]{9}");'
end

function mygit
    ~/for/forperl/commit.pl
end

function md2html
   pandoc -s --css=$HOME/for/misc/formarkdown.css  -V lang=en (basename $argv .md).md  -o (basename $argv .md).html 
end

function md2html-tmp
   pandoc -s --css=$HOME/for/misc/formarkdown.css  -V lang=en $argv -o /tmp/(basename $argv .md).html 
   open /tmp/(basename $argv .md).html 
end

function random_fn
  if not set -q argv[2]
    echo /tmp/(openssl rand -hex 12){$argv[1]}
  else
    mkdir -p /tmp/{$argv[2]}
    echo /tmp/{$argv[2]}/(openssl rand -hex 12){$argv[1]}
  end
end

#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

if [ -f '/Users/nailbiter/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/nailbiter/Downloads/google-cloud-sdk/path.fish.inc'; end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/oleksiileontiev/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/oleksiileontiev/Downloads/google-cloud-sdk/path.fish.inc'; end

## potential candidates for aliases
## make them aliases if you find yourself using them again and again
#!git revert (git log --format=oneline --decorate=short|fzf --layout=reverse|awk -F' ' '{print $1}')
eval (direnv hook fish)
set -x TESSDATA_PREFIX usr/local/share/tessdata

# Copyright (C) 2012-2014 Dmitry Medvinsky <me@dmedvinsky.name>. All Rights Reserved.
# This file is licensed under the GPLv2+. Please see COPYING for more information.

set -l PROG 'pass'

function __fish_pass_get_prefix
    if set -q PASSWORD_STORE_DIR
        realpath -- "$PASSWORD_STORE_DIR"
    else
        echo "$HOME/.password-store"
    end
end

function __fish_pass_needs_command
    [ (count (commandline -opc)) -eq 1 ]
end

function __fish_pass_uses_command
    set -l cmd (commandline -opc)
    if [ (count $cmd) -gt 1 ]
        if [ $argv[1] = $cmd[2] ]
            return 0
        end
    end
    return 1
end

function __fish_pass_print_gpg_keys
    gpg2 --list-keys | grep uid | sed 's/.*<\(.*\)>/\1/'
end

function __fish_pass_print
    set -l ext $argv[1]
    set -l strip $argv[2]
    set -l prefix (__fish_pass_get_prefix)
    set -l matches $prefix/**$ext
    printf '%s\n' $matches | sed "s#$prefix/\(.*\)$strip#\1#"
end

function __fish_pass_print_entry_dirs
    __fish_pass_print "/"
end

function __fish_pass_print_entries
    __fish_pass_print ".gpg" ".gpg"
end

function __fish_pass_print_entries_and_dirs
    __fish_pass_print_entry_dirs
    __fish_pass_print_entries
end

function __fish_pass_git_complete
    set -l prefix (__fish_pass_get_prefix)
    set -l git_cmd (commandline -opc) (commandline -ct)
    set -e git_cmd[1 2] # Drop "pass git".
    complete -C"git -C $prefix $git_cmd"
end

complete -c $PROG -f -n '__fish_pass_needs_command' -a help -d 'Command: show usage help'
complete -c $PROG -f -n '__fish_pass_needs_command' -a version -d 'Command: show program version'

complete -c $PROG -f -n '__fish_pass_needs_command' -a init -d 'Command: initialize new password storage'
complete -c $PROG -f -n '__fish_pass_uses_command init' -s p -l path -d 'Assign gpg-id for specified sub folder of password store'

complete -c $PROG -f -n '__fish_pass_needs_command' -a ls -d 'Command: list passwords'
complete -c $PROG -f -n '__fish_pass_uses_command ls' -a "(__fish_pass_print_entry_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a insert -d 'Command: insert new password'
complete -c $PROG -f -n '__fish_pass_uses_command insert' -s e -l echo -d 'Echo the password on console'
complete -c $PROG -f -n '__fish_pass_uses_command insert' -s m -l multiline -d 'Provide multiline password entry'
complete -c $PROG -f -n '__fish_pass_uses_command insert' -s f -l force -d 'Do not prompt before overwritting'
complete -c $PROG -f -n '__fish_pass_uses_command insert' -a "(__fish_pass_print_entry_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a generate -d 'Command: generate new password'
complete -c $PROG -f -n '__fish_pass_uses_command generate' -s n -l no-symbols -d 'Do not use special symbols'
complete -c $PROG -f -n '__fish_pass_uses_command generate' -s c -l clip -d 'Put the password in clipboard'
complete -c $PROG -f -n '__fish_pass_uses_command generate' -s f -l force -d 'Do not prompt before overwritting'
complete -c $PROG -f -n '__fish_pass_uses_command generate' -s i -l in-place -d 'Replace only the first line with the generated password'
complete -c $PROG -f -n '__fish_pass_uses_command generate' -a "(__fish_pass_print_entry_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a mv -d 'Command: rename existing password'
complete -c $PROG -f -n '__fish_pass_uses_command mv' -s f -l force -d 'Force rename'
complete -c $PROG -f -n '__fish_pass_uses_command mv' -a "(__fish_pass_print_entries_and_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a cp -d 'Command: copy existing password'
complete -c $PROG -f -n '__fish_pass_uses_command cp' -s f -l force -d 'Force copy'
complete -c $PROG -f -n '__fish_pass_uses_command cp' -a "(__fish_pass_print_entries_and_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a rm -d 'Command: remove existing password'
complete -c $PROG -f -n '__fish_pass_uses_command rm' -s r -l recursive -d 'Remove password groups recursively'
complete -c $PROG -f -n '__fish_pass_uses_command rm' -s f -l force -d 'Force removal'
complete -c $PROG -f -n '__fish_pass_uses_command rm' -a "(__fish_pass_print_entries_and_dirs)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a edit -d 'Command: edit password using text editor'
complete -c $PROG -f -n '__fish_pass_uses_command edit' -a "(__fish_pass_print_entries)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a show -d 'Command: show existing password'
complete -c $PROG -f -n '__fish_pass_uses_command show' -s c -l clip -d 'Put password in clipboard'
complete -c $PROG -f -n '__fish_pass_uses_command show' -a "(__fish_pass_print_entries)"
# When no command is given, `show` is defaulted.
complete -c $PROG -f -n '__fish_pass_needs_command' -s c -l clip -d 'Put password in clipboard'
complete -c $PROG -f -n '__fish_pass_needs_command' -a "(__fish_pass_print_entries)"
complete -c $PROG -f -n '__fish_pass_uses_command -c' -a "(__fish_pass_print_entries)"
complete -c $PROG -f -n '__fish_pass_uses_command --clip' -a "(__fish_pass_print_entries)"

complete -c $PROG -f -n '__fish_pass_needs_command' -a git -d 'Command: execute a git command'
complete -c $PROG -f -n '__fish_pass_uses_command git' -a '(__fish_pass_git_complete)'
complete -c $PROG -f -n '__fish_pass_needs_command' -a find -d 'Command: find a password file or directory matching pattern'
complete -c $PROG -f -n '__fish_pass_needs_command' -a grep -d 'Command: search inside of decrypted password files for matching pattern'
complete -c $PROG -f -n '__fish_pass_uses_command grep' -a '(begin
    set -l cmd (commandline -opc) (commandline -ct)
    set -e cmd[1 2] # Drop "pass grep".
    complete -C"grep $cmd"
end)'

# fix problems with curl
set -x HOMEBREW_FORCE_BREWED_CURL 1
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

# https://qiita.com/goemontech/items/4092a2cff040aba534fc
#export TERMINFO=/usr/share/terminfo
#export TERM=xterm+256color
