[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

# upto

Gets you to a parent folder, heavily inspired by the plugin [upto](https://github.com/driv/upto) made by [driv](https://github.com/driv).

## Install

With [fisherman]

```
fisher upto
```

## Usage

```fish
upto AnyParentFolder
```

Within `/home/username/Projects/project_a/src/Core` using the command `upto Projects` would get you inside the folder `/home/username/Projects`

It works on folders with non ascii characters if the charset used is UTF-8. If you call the command `upto weiß` inside the folder `/home/weiß/projekten/src/Core` would get you inside the folder `/home/weiß`.

Can be used on folders with spaces. `/home/User/My Documents/xls/2016/essays` using the command `upto "My Documents"` would get you inside the `/home/User/My Documents` folder.

[travis-link]: https://travis-ci.org/fisherman/upto
[travis-badge]: https://img.shields.io/travis/fisherman/upto.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
