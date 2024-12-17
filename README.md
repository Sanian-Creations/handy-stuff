# Handy Stuff
Collection of some handy stuff.

## Dir `project-setup` 
Stuff handy for setting up projects
- `git-hooks` contains several scripts that are useful to set as git hooks, for instance to run before committing. [What are Git hooks?](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

  You may want to combine a few of these and set them in your [git-init template directory](https://git-scm.com/docs/git-init#_template_directory), so they are always present in new repos and you don't have to think about it.
  
  - `nocheckin` (for pre-commit) Searches files that you are about to commit for the string `nocheckin`, and will error if it finds a match. Handy for marking temporary code you do not want to accidentally include in commits.
  
    *Note:* This does not look specifically at the parts which are staged, it simply searches through the entire file. So even if the part with "nocheckin" is not staged, this will still halt your commit. You could see that as a flaw, but think about it this way: it also forces you to remove those parts before committing, which means you will likely notice if the program breaks without that temporary code in place, rather than assuming that what you are committing is the solution.

  - `check-credentials` (for pre-commit) is a sanity check to ensure your git credentials are set locally. Being forced to set username and email for every repo ensures you can commit to both personal and work related repos without accidentally signing the commit with the wrong credentials.
  
- `editorconfig-csharp-visualstudio` Contains a `.editorconfig` file that I use for working on csharp projects. Drop it next to your `.sln` file and you're good to go. It fixes some indentation issues I've had with csproj files, which is nice. It is quite opinionated about the checks on csharp code though, some warnings I have turned into errors.

## Dir `common-scripts` 
Scripts handy for common actions, like cleaning out a repo to ensure a complete rebuild, etc.
- `rm-obj-bin.sh` (also `.bat` version) Is as script that will remove any directories named `obj` or `bin` from your current working directory and nested directories. This is useful if you want to ensure a complete rebuild.
