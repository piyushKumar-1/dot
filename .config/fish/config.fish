set -gx EDITOR nvim
set -gx FZF_DEFAULT_COMMAND 'fd --type f'
set -gx TERM "xterm-256color"
set -gx STARSHIP_LOG "error"
set -gx PRETTIERD_DEFAULT_CONFIG "$HOME/sdk/.prettierrc.json"
set -gx NVM_DIR "$HOME/.nvm"
set -gx NVIM_TUI_ENABLE_CURSOR_SHAPE 1
set -gx JDTLS_HOME "/opt/homebrew/Cellar/jdtls/1.11.0/libexec"

# postgresql 
set -gx LDFLAGS "-L/usr/local/homebrew/opt/postgresql@12/lib"
set -gx CPPFLAGS "-L/usr/local/homebrew/opt/postgresql@12/include"
set -gx PKG_CONFIG_PATH "/usr/local/homebrew/opt/postgresql@12/lib/pkgconfig"

alias ls="exa --icons -l --sort=type --sort=extension --git"
alias ls-tree="ls -T -L "
alias gco="git checkout"
alias axbrew='arch -x86_64 /usr/local/homebrew/bin/brew'
alias brew='/opt/homebrew/bin/./brew'

starship init fish | source

function conf 
  nvim $HOME/.config/$argv[1]
end

#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/shrey.bana/.ghcup/bin # ghcup-env
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/shrey.bana/.ghcup/bin # ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/shrey.bana/.ghcup/bin # ghcup-env
