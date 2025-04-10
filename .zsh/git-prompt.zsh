# 参考：https://git-scm.com/book/ja/v2/%E4%BB%98%E9%8C%B2-A:-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Bash%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86
# 参考（ソース元）：https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh

# promptにgitのbranchとstatusを表示

if [ -f ~/.git-shell/git-prompt.sh ]; then
  . ~/.git-shell/git-prompt.sh
else
  echo "curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-shell/git-prompt.sh"
fi
setopt PROMPT_SUBST
PS1='[%n@%m]%~$(__git_ps1 " [%s]") %(!,#,%%) '

# 変更状態の表示
  # * → ワークツリーに未ステージの変更がある
  # + → ステージング済みの変更がある
export GIT_PS1_SHOWDIRTYSTATE=1

# stash の有無を表示
  # $ → stash されている変更がある
export GIT_PS1_SHOWSTASHSTATE=1

# 未追跡ファイルの有無を表示
  # % → ワークツリーに未追跡のファイルがある
export GIT_PS1_SHOWUNTRACKEDFILES=1

# リモートとの差分を表示
  # autoにしたら
    # > → ローカルがリモートより古い
    # < → ローカルがリモートより新しい
    # <> → ローカルとリモートが分岐している
    # = → ローカルとリモートが同期されている
  # verboseにしたら
    # u-1 → ローカルがリモートより古い
    # u+1 → ローカルがリモートより新しい
    # u= → ローカルとリモートが同期されている
export GIT_PS1_SHOWUPSTREAM="verbose"

# git status -sbに従った色を付ける
export GIT_PS1_SHOWCOLORHINTS=1

# ブランチ名の後ろに表示する文字列
export GIT_PS1_STATESEPARATOR=" "

# コンフリクトの有無を表示
export GIT_PS1_SHOWCONFLICTSTATE="yes"
