#! /bin/bash

githubcli(){
    ./github-cli/install.sh
}

golang(){
    ./golang/install.sh
}

microk8s(){
    ./local-cluster/init.sh install
}

mongodb-tool(){
    ./mongodb-env/init.sh
}

main(){
    case ${1} in
        install-all)
            githubcli
            golang
            microk8s
            mongodb-tool
            git config --global user.name "hp-tsmc"
            git config --global user.email "hp.tsmc.it@gmail.com"
        ;;
        *)
            echo "Unknown commands"
        ;;
    esac
}

main ${1}