. ~/.aliases

til() {
    hostname=`hostname`

    if [ $hostname = 'alamo' ]; then
        echo $1 >> ~/til.txt
    else
        ssh alamo "echo $1 >> /home/w/wp/wporr/til.txt"
    fi
}

DOOM=~/.emacs.d/bin/
CUDADIR=/usr/local/cuda
export PS1="\[\e[33m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\]\[\e[33m\]:\[\e[m\]\[\e[33m\]\W\[\e[m\]\[\e[33m\]\\$\[\e[m\] "
export GOPATH=$HOME/go
export PATH=$PATH:$DOOM:$GOPATH/bin:$CUDADIR/bin:$HOME/.bin
export EDITOR=vim
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDADIR/lib64
export _JAVA_AWT_WM_NONREPARENTING=1
export GO111MODULE=auto
