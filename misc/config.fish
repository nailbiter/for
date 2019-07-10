set -x PATH $PATH ~/bin /usr/local/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /Library/TeX/texbin ~/anaconda2/bin
set -x EDITOR vim
set -x SHELL /usr/local/bin/fish

#alias rm="rm-p -i"
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
