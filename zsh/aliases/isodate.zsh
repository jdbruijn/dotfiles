# Currently a copy from Oh My Zsh.
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/isodate/isodate.plugin.zsh

# work with date ISO 8601 easy

alias isodate='date +%Y-%m-%dT%H:%M:%S%z'
alias isodate_utc='date -u +%Y-%m-%dT%H:%M:%SZ'
alias isodate_basic='date -u +%Y%m%dT%H%M%SZ'
alias unixstamp='date +%s'
alias date_locale='date +%c'
