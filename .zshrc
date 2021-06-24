eval "$(rbenv init -)"

# 初期化
source ~/.zplug/init.zsh

# 自身をプラグインとして管理する
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

## おすすめプラグイン

# プロンプト
zplug "sindresorhus/pure"

# 非同期処理
zplug "mafredri/zsh-async"

# 構文ハイライト
zplug "zsh-users/zsh-syntax-highlighting"

# コマンド履歴
zplug "zsh-users/zsh-history-substring-search"

# 入力補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"

# どこでもドア
zplug "b4b4r07/enhancd"

# インストールされてないプラグインをインストール
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# プラグインを読み込みコマンドを$PATHへ追加
zplug load
eval "$(anyenv init -)"

setopt nonomatch
eval "$(anyenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
