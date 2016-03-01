export PATH=~/prj/utils-git:~/prj/utils-sh:~/prj/utils-vcs:$PATH:~/prj/utils-cfg
export GITUSER=bisoff
export GITHOST=ok

#export PS1="\\033[0;34;48m[\u / \h] \\033[0;32;49m\w$git_branch: \[\033[m\]" #\\033[0;33;49m
#parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' }
export blue_dim="\\033[2;34;48m"
export blue="\\033[0;34;48m"

export green="\\033[0;32;49m"
export green_dim="\\033[2;32;49m"

export red="\\033[0;31;40m"
export red_dim="\\033[2;31;48m"
export red_bright="\\033[1;31;48m"

export norm="\\033[0;38;48m"
export white_dim="\\033[1;37;40m"
export grey="\\033[2;37;49m"

export cyan_bold="\033[1;36;40m"
export cyan_dim="\\033[2;36;48m"
export cyan_back="\\033[7;36;40m"

export magenta="\\033[0;35;40m" 
export magenta_dim="\\033[2;35;49m"

export yellow="\\033[0;33;49m"


export rectangle=""
#export rectangle=`echo -e "\xE2\x88\x8E"`
#export rectangle=`echo -e "\xF0\x9F\x80\xAB"`
#export rectangle=`echo -e "\xE2\x97\xBC\xEF\xB8\x8E"`
#export rectangle=`echo -e "\xE2\xA9\xA9"`

#export triangle=`echo -e "\xE2\x96\xB6\xEF\xB8\x8E"`
#export triangle=`echo -e "\xE2\x96\xBA"`
export triangle=`echo -e "\xE2\xAB\xB8"`
# ⩩ TRIPLE HORIZONTAL BAR WITH TRIPLE VERTICAL STROKE E2 A9 A9
# ∎ END OF PROOF E2 88 8E
# ◼︎ BLACK MEDIUM SQUARE E2 97 BC EF B8 8E
# 🀫 MAHJONG TILE BACK F0 9F 80 AB
# ► BLACK RIGHT-POINTING POINTER  E2 96 BA
# ▶︎ BLACK RIGHT-POINTING TRIANGLE E2 96 B6 EF B8 8E
# ⫸ TRIPLE NESTED GREATER-THAN E2 AB B8
export nobreakspace=`echo -e "\xC2\xA0"`
export zerowidthspace=`echo -e "\xE2\x80\x8B"`
#0	Reset all attributes
#1	Bright
#2	Dim

. lib-git
#export PS1="$cyan_bold\w [ $green\$(current_branch) $magenta_dim-> \$(current_remote) \$(ahead_behind)$cyan_bold \$(files_status)$cyan_bold]:$norm" #$blue_dark[\u / \h] 
#export PS1="$cyan_bold\w\$(git_prompt)$cyan_bold:$norm " #\$(ahead_behind)$cyan_bold \$(files_status)
export PS1="$cyan_back\w$norm\$(git_prompt)$norm$cyan_bold$triangle$triangle$triangle$norm " #\$(ahead_behind)$cyan_bold \$(files_status)$cyan_back 
#export PS1="$blue_dark[\u / \h] $cyan_bold\w$green\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'): \[\033[m\]" 

export CLICOLOR=1 #enables coloring of your terminal
export LSCOLORS=GxFxCxDxBxegedabagaced # specifies how to color specific items

alias ls='ls -G1'
alias lsc='ls -GC'
alias bp='. ~/.bash_profile'
alias bpe='ed ~/.bash_profile'
alias a2x='python ~/prj/asciidoc/a2x.py'
alias asciidoc='~/prj/asciidoc/asciidoc.py'

export PGPASSWORD=@Mivar123User@
alias pg_restore='/Library/PostgreSQL/9.4/bin/pg_restore -h dev-db.mivar.pro -U postgres'
alias pg_dump='/Library/PostgreSQL/9.4/bin/pg_dump -h dev-db.mivar.pro -U postgres'
alias psql='/Library/PostgreSQL/9.4/bin/psql -h dev-db.mivar.pro -U postgres'

export EDITOR=subl #'subl -w'
export VIEWER="pygmentize -g"
