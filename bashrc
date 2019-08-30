. .aliases

til() {
    hostname=`hostname`
    
    if [ $hostname = 'alamo' ]; then
        echo $1 >> ~/til.txt
    else
        ssh alamo "echo $1 >> /home/w/wp/wporr/til.txt"
    fi
}

DOOM=~/.emacs.d/bin/
export GOPATH=$HOME/go
export PATH=$PATH":$DOOM:$GOPATH/bin"
export EDITOR=vim
