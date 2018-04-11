# git pull on all clones in ~/git/
gitpullall() {
    for i in $(ls --directory $HOME/git/*); do
        git -C $i pull
    done
}

