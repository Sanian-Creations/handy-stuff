# Handy Stuff
Collection of some handy stuff.

## Dir `project-setup` 
Stuff handy for setting up projects
- `pre-commit` is a git hook that you can add to the `.git/hooks` directory of any project. [What are Git hooks?](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
  - Searches files that you are about to commit for the string `nocheckin`, and will error if it finds a match. Handy for marking temporary code you do not want accidentally include in commits.

    *Note:* This does not look specifically at the parts which are staged, it simply searches through the entire file. So even if the part with "nocheckin" is not staged, this will still halt your commit.
