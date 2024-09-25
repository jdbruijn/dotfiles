for function ("${ZSH_CUSTOM}/functions/"*.zsh); do
  source "${function}"
done

# The `work_in_progress` function is from the `git` plugin. This function is
# conflicting with the zsh-autosuggestions for navigating to Git worktrees,
# making naviation to worktrees slightly annoying.
unfunction work_in_progress # From the git plugin
