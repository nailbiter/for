set -x PATH $PATH ~/bin /usr/local/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /Library/TeX/texbin ~/anaconda2/bin /Users/oleksiileontiev/google-cloud-sdk/bin
set -x EDITOR vim
set -x SHELL /usr/local/bin/fish
set -x GOOGLE_APPLICATION_CREDENTIALS "/Users/oleksiileontiev/.config/gcloud/legacy_credentials/nailbiter@dtws-work.in/adc.json"
set -x GCLOUD_PROJECT "dtws-pipeline-dev"

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

alias gsutil="/Users/nailbiter/Downloads/google-cloud-sdk/bin/gsutil"
function gitr
  git rebase -i (git log --format=oneline --decorate=short|fzf --layout=reverse|awk -F' ' '{print $1}')
end

function print_trello
  perl -e 'use EHxzFeoHi::Trello::Card; my $pi; if($ARGV[0] =~ /^dtws:(.*)/){$ARGV[0] = $1; $pi="dtws";} print EHxzFeoHi::Trello::Card->new(URL=>$ARGV[0],PASS_ID=>$pi)->toString;' $argv
end

function attach_url_to_trello
  perl -e 'use EHxzFeoHi::Trello; my $pi; if($ARGV[0] =~ /^dtws:(.*)/){$ARGV[0] = $1; $pi="dtws";} print EHxzFeoHi::Trello->new(URL=>$ARGV[0],PASS_ID=>$pi)->attach(url=>$ARGV[1]);' $argv
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

#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

if [ -f '/Users/nailbiter/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/nailbiter/Downloads/google-cloud-sdk/path.fish.inc'; end
