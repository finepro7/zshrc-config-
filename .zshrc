# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load Powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

#Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use eza (exa replacement) with icons, grouping, and git integration
alias ls='eza --icons --group-directories-first --color=always'
alias ll='eza -l --icons --group-directories-first --color=always'
alias la='eza -la --icons --group-directories-first --color=always'
alias lh='eza -lh --icons --group-directories-first --color=always'

# Tree view (current dir and one level deep)
alias lt='eza -T --level=2 --icons --group-directories-first --git-ignore'

# Tree view with full Git status
alias lgt='eza -T --level=2 --icons --group-directories-first --git --git-ignore'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

