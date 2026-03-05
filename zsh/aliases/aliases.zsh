# Alias.
alias ag='alias | grep'

# Short version to run npm scripts.
alias nr='npm run --silent'

# Print each PATH entry on a separate line.
alias path='echo -e ${PATH//:/\\n}'

# Git.
alias glolnc='glol --grep="^chore" --invert-grep'

function gclb() {
  local repository="${1}"

  git clone --recurse-submodules "${repository}" --bare --config remote.origin.fetch='+refs/heads/*:refs/remotes/origin/*'
}
