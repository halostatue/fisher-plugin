# halostatue/fisher-plugin

> Run `make init AUTHOR=name NAME=owner/repo` to make this your own. It will
> make changes that prepare your plug-in repository. This does _not_ commit
> the changes or make all changes for you.
>
> This repository is a template for creating [fisher][]-compatible plugins for
> the Fish shell.
>
> From [creating a plugin][]:
>
> > A plugin can be any number of files in a `functions`, `conf.d`, and
> > `completions` directory. Most plugins consist of a single function, or
> > configuration [snippet][]. This is what a typical plugin looks like.
> >
> > ```
> > ponyo
> > ├── completions
> > │   └── ponyo.fish
> > ├── conf.d
> > │   └── ponyo.fish
> > └── functions
> >     └── ponyo.fish
> > ```
>
> When using this repository, remember to remove the `.keep` files, as their
> presence will cause installation failures.

A short description of this module for [fish shell][].

## Installation

Install with [Fisher][] (recommended):

```fish
# Fisher 4.0+: dependencies must be specified explicitly
fisher install OWNER/REPONAME
```

<details>
<summary>Not using a package manager?</summary>

---

Copy `completions/*.fish`, `conf.d/*.fish`, and `functions/*.fish` to your fish
configuration directory preserving the directory structure.

</details>

### System Requirements

- [fish][] 3.0+

## Functions

> A description of the functions added by this plugin.

### ponyo

> A description of the function `ponyo`.

```fish
$ ponyo example
example output
```

## Licence

> The licence for the plug-in. I habitually choose MIT.

[MIT](LICENCE.md)

[fish shell]: https://fishshell.com 'friendly interactive shell'
[fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
[creating a plugin]: https://github.com/jorgebucaran/fisher#creating-a-plugin
[snippet]: https://fishshell.com/docs/current/index.html#configuration-files
[events]: https://fishshell.com/docs/current/cmds/emit.html
