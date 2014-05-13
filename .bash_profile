
# git
alias gs="git status"
alias gaa="git add --all"
alias gc="git commit -m"
alias gba="git branch --all"
alias gco="git checkout"
alias prune="git remote prune origin"
alias prune-merged='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias super-prune='prune; prune-merged'
alias master="gco master"
alias push="git push"
alias pull="git pull"

git_add_all_commit_push() {

    if [[ $# -ne 1 ]]; then
        echo "Error, USAGE: gacp MESSAGE"
        return
    fi

    git add --all;
    git commit -m $1;
    git push;
    echo "Added, Committed, and pushed with message $1";
}

## alias gac="git add --all; git commit -m 'message'; git push;"
alias gacp=git_add_all_commit_push

git_add_all_commit() {

    if [[ $# -ne 1 ]]; then
        echo "Error, USAGE: gac MESSAGE"
        return
    fi

    git add --all;
    git commit -m $1;
    echo "Added and Committed with message $1";
}

## alias gac="git add --all; git commit -m 'message';"
alias gac=git_add_all_commit

git_new_feature() {

    if [[ $# -ne 1 ]]; then
        echo "Error, USAGE: git-nf BRANCH_NAME"
        return
    fi

    git checkout master;
    git ull;
    git push;
    git checkout -b $1;
    echo "Created Branch $1";
}

## alias git-nf="git checkout master; git ull; git pull; git push;"
alias gnf=git_new_feature

# mvn
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mcv="mvn clean verify"
alias mcist="mvn clean install -DskipTests=true"
alias mcpst="mvn clean package -DskipTests=true"
alias mcvst="mvn clean verify -DskipTests=true"

# play
alias pr="./run_server"

# dirs
alias ws="cd $HOME/Workspace"
alias bo="cd $HOME/Workspace/backoffice"
alias ink="cd $HOME/Workspace/inkstagram"
alias contracts="cd $HOME/Workspace/contracts"
alias waw="cd $HOME/Workspace/waw"

# ssh
alias wts="ssh whatsthescore@whatsthescore.webfactional.com"

# edit
alias sl="subl -w"
alias profile="subl -w ~/.bash_profile"
alias sourcep="source ~/.bash_profile"

# django
alias rs="./run-server.py"
alias syncdb="./sync-db.py"

# unix
alias ls="ls -a"

#############
#PATH Config#
#############

export EDITOR='subl -w'
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

export NVIDIA_PATH=/Developer/NVIDIA/CUDA-5.0/bin
export BIN_HOME=/usr/local/bin

export PATH=$PATH:$NVIDIA_PATH:$BIN_HOME:$PLAY2_HOME
export MAVEN_OPTS='-Xms1024m -Xmx2048m -XX:MaxPermSize=128m'

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH