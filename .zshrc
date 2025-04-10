# Set up the prompt
autoload -Uz promptinit
promptinit
prompt default

# Set up git prompt
source ~/.zsh/git-prompt.zsh

# Set up do enter
source ~/.zsh/do-enter.zsh

# Set up aliases
source ~/.zsh/alias.zsh

# Set up anyframe
source ~/.zsh/anyframe.zsh

# Set up history
setopt histignorealldups sharehistory

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Set up completion
autoload -Uz compinit && compinit -i

# Set up nodejs
export PATH=$PATH:/home/takumi/apps/node-v20.14.0-linux-x64/bin
