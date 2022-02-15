# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Open TMUX at terminal session start
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
#fi

alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias ls="ls --color"

# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi

# Linux Lite Custom Terminal
LLVER=$(awk '{print}' /etc/llver)

#alias personalizados
alias ll="ls -lha"

#Alias de Mysql y XAMPP
alias lampp='sudo /opt/lampp/lampp'
alias mysql="/opt/lampp/bin/mysql -u root"
alias mysqlstart="sudo /opt/lampp/lampp startmysql"
alias mysqlstop="sudo /opt/lampp/lampp stopmysql"


#Alias para manejo de directorio
function mkdircd() {
        mkdir -p "$@" && eval cd "\"\$$#\"";
}

#Alias para PostgreSQL
#alias postgrestart='sudo docker exec -it my-postgres psql -U postgres'

#Alias para USB y otras unidades de Almacenamiento

#alias montarUSB='sudo sh -c "/usr/bin/echo $((16*1024*1024)) > /proc/sys/vm/dirty_background_bytes" && sudo sh -c "/usr/bin/echo $((48*1024*1024)) > /proc/sys/vm/dirty_bytes"'

echo -e "Bienvenido $LLVER ${USER}"
echo " "
date "+%A %d %B %Y, %T"
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
echo " "
source ~/trueline/trueline.sh
source ~/trueline/trueline.sh
. "$HOME/.cargo/env"
