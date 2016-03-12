## Create git repositories via your terminal!

First, go to https://github.com/settings/tokens and generate a token with the 'repo' scope/privilege.

Next, source the shell file in this directory. You can source it automatically upon shell startup via editing your .bashrc or similar.

Copy the generated token and set it:

`set-git-token <token>`

To get your token, use:

`get-git-token`

To remove it, do:

`unset-git-token`

Finally, just run:

`make-repo <name>`

All done!
