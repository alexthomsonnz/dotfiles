if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.config/fish/aliases.fish


set -g -x ENVIRONMENT development
set -g -x PGUSER alexthomson


# # .venv auto activate/deativate
function auto_activate_venv --on-variable PWD
    # Get the top-level directory of the current Git repo (if any)
    set REPO_ROOT (git rev-parse --show-toplevel 2>/dev/null)

    # Case #1: cd'd from a Git repo to a non-Git folder
    if test -z "$REPO_ROOT"; and test -n "$VIRTUAL_ENV"
        deactivate
    end

    # Case #2: cd'd folders within the same Git repo
    if [ "$VIRTUAL_ENV" = "$REPO_ROOT/.venv" ]
        return
    end
    if [ "$VIRTUAL_ENV" = "$REPO_ROOT/venv" ]
        return
    end

    # Case #3: cd'd from a non-Git folder into a Git repo
    if [ -d "$REPO_ROOT/.venv" ]
        source "$REPO_ROOT/.venv/bin/activate.fish" &>/dev/null
    end
    if [ -d "$REPO_ROOT/venv" ]
        source "$REPO_ROOT/venv/bin/activate.fish" &>/dev/null
    end
end

auto_activate_venv


set PATH $HOME/.yarn/bin $PATH

# Misc Env variables
set -g -x VIRTUAL_ENV_DISABLE_PROMPT false

# Readline colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline
set -g fish_color_separator 999

# Git prompt status
set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_showupstream auto
set color_dir_bg 2DCCFF
set color_git_bg 57F000
set color_git_dirty_bg FFB301
set color_virtual_env_bg black
set color_virtual_env_str white

set __fish_git_prompt_color_upstream_ahead ffb90f
set __fish_git_prompt_color_upstream_behind blue

set -g -x fish_greeting ''

# Tweak settings for spunge fish plugin
set sponge_allow_previously_successful true
set sponge_delay 10
set sponge_purge_only_on_exit true


# Homebrew setup
set -gx HOMEBREW_PREFIX "/opt/homebrew";
set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;

# pspg setup
set -g -x PSQL_PAGER pspg
set -g -x PSPG "--quit-if-one-screen --csv -X --ignore-case --csv-header on --pgcli-fix --style=16 --csv-trim-rows=1"

