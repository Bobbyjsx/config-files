# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# ----------------------------------
# PATH Configuration
# ----------------------------------
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# ----------------------------------
# Oh My Zsh Configuration
# ----------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k" # Powerlevel9k for a detailed prompt

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
  context 
  #battery
  dir 
  vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  time
  #custom_wifi_signal
  ram
  #load
)
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

# ----------------------------------
# Aliases
# ----------------------------------
alias cd="z" # Use zoxide for navigation
alias zshconfig="nvim ~/.zshrc" # Quick access to this file
alias ohmyzsh="nvim ~/.oh-my-zsh"

# ----------------------------------
# Plugins and Integrations
# ----------------------------------
eval "$(zoxide init zsh)"

# ----------------------------------
# Editor and Language Settings
# ----------------------------------
export LANG="en_US.UTF-8"
export EDITOR="nvim" # Default editor for local and remote

# ----------------------------------
# Miscellaneous
# ----------------------------------
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="red"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="green"

#gut alias
alias gut='branch=$(git branch --show-current) && echo "Current branch: $branch" && git push --set-upstream origin $branch'


PATH=~/.console-ninja/.bin:$PATH

#syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
export PATH=/Users/admin/.console-ninja/.bin:/Users/admin/bin:/Users/admin/.local/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Users/admin/.console-ninja/.bin:/Users/admin/bin:/Users/admin/.local/bin:/Users/admin/.yarn/bin

# pnpm
export PNPM_HOME="/Users/admin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
