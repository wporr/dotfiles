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
export GOPATH=$HOME/go
export PATH=$PATH:$DOOM:$GOPATH/bin:$CUDADIR/bin:$HOME/.bin
export EDITOR=vim
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDADIR/lib64
export CUDA_VISIBLE_DEVICES=0
