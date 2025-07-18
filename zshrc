# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Amazon Q pre block. Keep at the top of this file.

# ----------------------------------
# PATH Configuration
# ----------------------------------

# ----------------------------------
# Oh My Zsh Configuration
# ----------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k" # Powerlevel9k for a detailed prompt

# Uncomment for theme randomization
# ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "agnoster")

plugins=(
  git
  zsh-autosuggestions
#  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ----------------------------------
# General Settings
# ----------------------------------
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment if working with large repositories
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# ----------------------------------
# Prompt Customization
# ----------------------------------
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  #os_icon
  #context #Name of user
  #battery
  dir # current dir
  vcs #git branch
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status #comand status
  #time
  #custom_wifi_signal
  virtualenv #py env
  #ram
)
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "


POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

# ----------------------------------
# Aliases
# ----------------------------------
alias cd="z" # Use zoxide for navigation
alias zshconfig="nvim ~/.zshrc" # Quick access to this file
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias py="python3"

# ----------------------------------
# Plugins and Integrations
# ----------------------------------
eval "$(zoxide init zsh)"

# ----------------------------------
# Editor and Language Settings
# ----------------------------------
export LANG="en_US.UTF-8"

# ----------------------------------
# Miscellaneous
# ----------------------------------
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="red"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="green"

#gut alias
alias gut='branch=$(git branch --show-current) && echo "Current branch: $branch" && git push --set-upstream origin $branch'



#syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
