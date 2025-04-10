# cdr有効化
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# ghq有効化
if [ -d "$HOME/apps/ghq" ]; then
  export PATH="$HOME/apps/ghq:$PATH"
else
  echo "CURRENT_GHQ_VERSION=$(curl -s https://api.github.com/repos/x-motemen/ghq/releases/latest | grep tag_name | cut -d '"' -f 4)"
  echo "Do the following commands to install ghq:"
  echo "curl -L https://github.com/x-motemen/ghq/releases/download/${GHQ_VERSION}/ghq_linux_amd64.zip -o ghq.zip"
  echo "unzip ghq.zip"
  echo "mv ghq_linux_amd64 ghq"
  echo "chmod +x ghq"
  echo "sudo mv ghq ~/apps"
  echo "rm -rf ghq.zip"
fi

# anyframeの読み込み
fpath=($HOME/.zsh/anyframe(N-/) $fpath)
autoload -Uz anyframe-init
anyframe-init


# Set up anyframe

# pecoが開き、移動したことのあるディレクトリ一覧が表示される
# 選択するとそのディレクトリに移動する
bindkey '^x^c' anyframe-widget-cdr

# pecoが開き、ブランチ一覧が表示される
# 選択するとそのブランチにcheckoutする
bindkey '^xc' anyframe-widget-checkout-git-branch

# pecoが開き、ブランチ一覧が表示される
# 選択するとそのブランチ名がコマンドラインに挿入される
bindkey '^xb' anyframe-widget-insert-git-branch
bindkey '^xb' anyframe-widget-insert-git-branch

# pecoが開き、コマンド履歴が表示される
# 選択するとそのコマンドが実行される
# →過去コマンドをそのまま実行するのに利用する
bindkey '^r' anyframe-widget-execute-history

# pecoが開き、コマンド履歴が表示される
# 選択するとそのコマンドがターミナルに挿入される
# →過去コマンドを改変して実行するのに利用する
bindkey '^xi' anyframe-widget-put-history


# pecoが開き、anyframeで追加されたウィジェット一覧が表示される
# 選択するとそのウィジェットが実行される
bindkey '^xx' anyframe-widget-select-widget
bindkey '^x^x' anyframe-widget-select-widget

# pecoが開き、カレントディレクトリのファイル一覧が表示される
# 選択するとそのファイルがコマンドラインに挿入される
bindkey '^xf' anyframe-widget-insert-filename
bindkey '^x^f' anyframe-widget-insert-filename

