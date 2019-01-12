# VirtualEnv Environment Variable
# Virtualenvwrapper things
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/nimoore/.oh-my-zsh

# Vault Enviornment Variable
export VAULT_ADDR="http://0.0.0.0:8200"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}💍"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_DISABLE_PROMPT=true
POWERLEVEL9K_PROMT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir
  custom_docker_icon
  vcs
  newline
  status
)
POWERLEVEL9K_CUSTOM_DOCKER_ICON="echo -n '\uf308'"
POWERLEVEL9K_CUSTOM_DOCKER_ICON_BACKGROUND=069
POWERLEVEL9K_CUSTOM_DOCKER_ICON_FOREGROUND="black"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

alias lsh='ls -lah'
alias gsh='git show'
alias gconf='git config -l'
alias ga='git add'
alias gi='git init'
alias gb='git branch'
alias gbv='gb -v'
alias gs='git status'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gl='git log --oneline --graph --all'
alias frcli-us-east-1='source ~/awswitch/cli-one'
alias frcli-us-east-2='source ~/awswitch/cli-two'
alias frcli-us-west-1='source ~/awswitch/cli-three'
alias holynakamotocli='source ~/awswitch/cli-four'
alias pullpe='scp -r nmoore@10.12.13.51:/usr/local/rancid/var/PE1 /Users/nimoore/pfinfra/'
alias pullsc='scp -r nmoore@10.12.13.51:/usr/local/rancid/var/SC /Users/nimoore/pfinfra/'
alias purgeios='rm *ios'
alias purgeiosconf='rm *ios *conf'
alias appendconf='for i in pe1swilo*; do mv "$i" "$i.conf"; done'
alias appendios='for i in *; do mv "$i" "$i.ios"; done'
alias reappendconf='for file in *.conf.ios; do mv "$file" "${file%.conf.ios}.conf"; done'
alias Ue1IntUdpApp01='ssh -i "~/.ssh/ue1-fr-env.pem" centos@10.217.208.151'
alias ec2='ssh -i "~/.ssh/id_krypton.pem" ubuntu@ec2-34-215-4-206.us-west-2.compute.amazonaws.com'
alias apacheroot='cd /Library/WebServer/Documents/'
alias rsap='sudo /usr/sbin/apachectl restart'
alias noscreen='pmset noidle'
alias free='top -l 1 -s 0 | grep PhysMem'
alias hqnet='ssh nmoore@10.12.13.51'
alias bk='cd ..'
alias find='find ./ -type f -exec grep -il "blah_blah_text" {} \;'
alias pcat='pygmentize -f terminal256 -O style=native -g'
alias tulpn='sudo lsof -i -n -P'
alias record='asciinema rec'
alias ohmy='sudo chsh -s /usr/bin/zsh'
alias dform='source /Users/nimoore/Downloads/Ex_Files_Learning_Docker/Exercise\ Files/reformat.sh'
alias dd='dd.sh'
alias din='docker info'
alias dim='docker images'
alias dcr='docker container run'
alias dps='docker ps --format $FORMAT'
alias dpsa='docker ps -a --format=$FORMAT'
alias dpsl='docker ps -l --format=$FORMAT'
alias dci='docker commit'
alias dt='docker tag'
alias de='docker exec'
alias dk='docker kill'
alias db='docker build -t'
alias din='docker inspect --format '{{.State.Pid}}' hello'
alias drm='docker rm'
alias dp='docker port'
alias dpl='docker pull'
alias dsi='docker save -o images.tar.gz centos ubuntu busybox alpine fedora base/archlinux'
alias dli='docker load -i images.tar.gz'
alias dnc='docker network create'
alias dreg='docker run -d -p 5000:5000 --restart=always --name registry registry:2'
alias dsearch='docker search'
alias drvf='docker run -ti --volumes-from youthful_lumiere ubuntu bash'
alias dmv='docker run -ti -v /Users/nimoore/example:/shared-folder ubuntu bash'
alias dncubuntu='docker run --rm -ti --net=examplenet --name server ubuntu:14.04 bash'
alias dlink='docker run -ti --rm --link eager_ritchie --name client ubuntu:14.04 bash'
alias dubuntuio='docker run --rm -ti -p 45678:45678 -p 45679:45679 --name echo-server ubuntu:14.04 bash'
alias dcentos='docker run -ti centos:latest bash'
alias dubuntu='docker run -ti ubuntu:latest bash'
alias ddcentos='docker run -ti -d centos:latest bash'
alias ddubuntu='docker run -ti -d ubuntu:latest bash'
alias dcentosrm='docker run -ti --rm centos:latest bash'
alias dubunturm='docker run -ti --rm ubuntu:latest bash'
alias dtrustyrm='docker run -ti --rm ubuntu:14.04 bash'
alias drbubuntu='docker run -ti ubuntu:latest bash -c "sleep 3; echo all done"'
alias da='docker attach'
alias dil='docker image ls'
alias dl='docker logs -f'
alias ds='sudo systemctl start docker'
alias dr='docker run -ti --rm'
alias dc='docker-compose'
alias dcs='docker container stop'
alias dcls='docker container ls'
alias dcla='docker container ls -a'
alias dcll='docker container ls -l'
alias dcrm='docker container rm'
alias dcl='docker container logs'
alias dct='docker container top'
alias dagram='/usr/bin/igdm'
alias pimp='code ~/.zshrc'
alias limp='source ~/.zshrc'
alias simp='more ~/.zshrc | grep'
alias gimp='source ~/.bash_profile'
alias suspend='systemctl suspend'
alias do1='ssh root@206.189.68.165'
alias kube='kubectl'
alias kgd='kube get deployments'
alias kgn='kube get nodes'
alias kgrs='kube get rs'
alias kgp='kube get pods'
alias ked='kube expose deployment'
alias kgs='kube get services'
alias mks='minikube service'
alias kga='kube get all'
alias kgdy='kube get deployment -o yaml'
alias kc='kube create -f'
alias ks='kube scale'
alias kl='kube label'
alias kgpl='kgp --show-labels'
alias kdp='kube delete pods'
alias kubeboom='kubectl delete daemonsets,replicasets,services,deployments,pods,rc --all'
alias hg='history | grep'
alias lsd='ls -d */'
alias vs='vagrant status'
alias vu='vagrant up'
alias vgs='vagrant global-status'
alias vh='vagrant halt'
alias vgsp='vagrant global-status --prune'
alias vssh='vagrant ssh'
alias vd='vagrant destroy'
alias vr='vagrant reload'
alias Voi='vault operator init'
alias Vou='vault operator unseal'
alias Vv='vault -v'
alias Vds='vault server -dev'
alias Vsl='vault secrets list'
alias Vse='vault secrets enable'
alias Vw='vault write'
alias Vses='vault secrets enable ssh'
alias Vaeu='vault auth enable userpass'
alias Vl='vault login'
alias Vtc='vault token create'
alias Vrolessh='Vw ssh/roles/admin key_type=otp default_user=vaultuser cidr_list=0.0.0.0/0,0.0.0.0/0'
# show vault persimissions to give path for user
alias Vtcap='vault token capabilities'
alias Vlta='vault list auth/token/accessors'
alias Vtla='vault token lookup -accessor'
alias Vtra='vault token revoke -accessor'
alias Vlu='vault login --method=userpass'
alias Vpl='vault policy list'
alias Vpr='vault policy read'
alias Vpw='vault policy write'
alias Val='vault auth list'
alias Vph='vault path-help'
alias Vs='vault status'
alias Vkp='vault kv put'
alias Vkg='vault kv get'
alias Vkgj='vault kv get -format=json'
alias vbubuntu='vagrant init bento/ubuntu-16.04'
alias vcentos7='vagrant init centos/7'
alias gc='git clone'
alias vp='vagrant package --vagrantfile'
alias vbl='vagrant box list'
alias vba='vagrant box add'
alias vss='vagrant snapshot save'
alias vsl='vagrant snapshot list'
alias vsr='vagrant snapshot restore'
alias vagraboom='vagraboom.sh'
alias rmd='rm -rf'
alias geo="curl ipinfo.io/"
alias aspathlength='python ~/ripestat-text/scripts/ripestat -w as-path-length'
alias asneighborhist='python /Users/nimoore/ripestat-text/scripts/ripestat -w asn-neighbours-history'
alias geoloc="python /Users/nimoore/ripestat-text/scripts/ripestat -w geoloc"
alias rhistory="python /Users/nimoore/ripestat-text/scripts/ripestat -w routing_history"
alias rstatus="python /Users/nimoore/ripestat-text/scripts/ripestat -w routing_status"
alias asadv="python /Users/nimoore/ripestat-text/scripts/ripestat -w announced_prefixes"
alias asview="python /Users/nimoore/ripestat-text/scripts/ripestat -w as_overview"
alias foxoff='curl "https://api.sfox.com/v1/offer/buy?amount=1" -u "f0751e450efe7eadde57a019b7fbb1275e81001297d18f37c7e7dc4e2532fc80:"'
alias cwho='whois -h whois.cymru.com'
alias reboot='sudo shutdown -r now'
alias mtr='sudo mtr'

# Added by Krypton
export GPG_TTY=$(tty)

#Visual Studio Code Function
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme
source  ~/powerlevel9k/powerlevel9k.zsh-theme

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nimoore/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nimoore/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nimoore/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nimoore/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi

