# Handy Stuff
Collection of some handy stuff.

For Windows debloat, check out https://github.com/ChrisTitusTech/winutil

## [`browser_extensions.md`](https://github.com/Sanian-Creations/handy-stuff/blob/main/browser_exensions.md)
List of browser extensions I find useful. For Firefox/Librewolf.

## Dir [`project-setup`](https://github.com/Sanian-Creations/handy-stuff/tree/main/project-setup)
Stuff handy for setting up projects
- `git-hooks` contains several scripts that are useful to set as git hooks, for instance to run before committing. [What are Git hooks?](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)

  You may want to combine a few of these and set them in your [git-init template directory](https://git-scm.com/docs/git-init#_template_directory), so they are always present in new repos and you don't have to think about it.

  Do this by running `git config --global init.templatedir "your/template/dir"`, and also setting the `GIT_TEMPLATE_DIR` environment var (on one of my machines I only set the env var, which worked for `git init`, but did not seem to affect `git clone` - even though it should. Setting the global config did make it work, so setting both is just your safest bet).
  
  - `nocheckin` (for pre-commit) Searches files that you are about to commit for the string `nocheckin`, and will error if it finds a match. Handy for marking temporary code you do not want to accidentally include in commits.
  
    *Note:* This does not look specifically at the parts which are staged, it simply searches through the entire file. So even if the part with "nocheckin" is not staged, this will still halt your commit. You could see that as a flaw, but think about it this way: it also forces you to remove those parts before committing, which means you will likely notice if the program breaks without that temporary code in place, rather than assuming that what you are committing is the solution.

  - `check-credentials` (for pre-commit) is a sanity check to ensure your git credentials are set locally. Being forced to set username and email for every repo ensures you can commit to both personal and work related repos without accidentally signing the commit with the wrong credentials.
  
- `editorconfig-csharp-visualstudio` Contains a `.editorconfig` file that I use for working on csharp projects. Drop it next to your `.sln` file and you're good to go. It fixes some indentation issues I've had with csproj files, which is nice. It is quite opinionated about the checks on csharp code though, some warnings I have turned into errors.

## Dir [`common-scripts`](https://github.com/Sanian-Creations/handy-stuff/tree/main/common-scripts)
Scripts handy for common actions, like cleaning out a repo to ensure a complete rebuild, etc.
- `rm-obj-bin.sh` (also `.bat` version) Is as script that will remove any directories named `obj` or `bin` from your current working directory and nested directories. This is useful if you want to ensure a complete rebuild.

## Dir [`bookmarks`](https://github.com/Sanian-Creations/handy-stuff/tree/main/bookmarks)
This contains some of the bookmarks that I have found to be useful. They are stored in the NETSCAPE-Bookmark-file format. 

To export your own bookmarks using this format (in Firefox, idk about Chrome) you open the bookmarks manager by right clicking the bookmarks bar. Then in the "Import and Backup" menu you select "Export Bookmarks to HTML...". This will export all your bookmarks to this format. To only export a few ones, it's a bit finnicky... I usually make a backup, then I delete everything I don't want to export, make the export, and then restore the backup again.

For the purposes of keeping the commits to this repository sane, I have made a script which will strip all the unnecessary stuff from the file, such as base64 encodings of the icons, and modification dates. If you want to update a bookmarks file, first run the script on it like so: 

`python strip_bookmarks_file.py "Coding bookmarks.html"`

...only *then* commit it to the repo.
