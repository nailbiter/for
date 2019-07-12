set -x PATH $PATH ~/bin /usr/local/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /Library/TeX/texbin ~/anaconda2/bin
set -x EDITOR vim
set -x SHELL /usr/local/bin/fish

# The next line updates PATH for the Google Cloud SDK.
#source '/Users/oleksiileontiev/google-cloud-sdk/path.fish.inc'

# The next line enables shell command completion for gcloud.
#source '/Users/oleksiileontiev/google-cloud-sdk/completion.fish.inc'

#alias rm="rm-p -i"
alias git="env LC_ALL=en_US git"
alias npmr="npm run"
alias npmb="npm run build"
alias npmi="npm install"
alias npmig="npm install -g"
alias npmci="npm ci"
alias npmst="npm start"
alias npmsv="npm run serve"

function mygit
    ~/for/forperl/commit.pl
end
