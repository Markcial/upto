<div align="center">

# ⬆️ upto

**Jump to any parent directory by its name. A tiny [fish shell](https://fishshell.com) plugin.**

[![License: MIT](https://img.shields.io/github/license/Markcial/upto)](LICENSE)
![fish shell](https://img.shields.io/badge/fish-shell-4AAE46)
[![GitHub stars](https://img.shields.io/github/stars/Markcial/upto?style=social)](https://github.com/Markcial/upto/stargazers)

</div>

Heavily inspired by the plugin [upto](https://github.com/driv/upto) made by [driv](https://github.com/driv).

```fish
~/Projects/project_a/src/Core $ upto Projects
~/Projects $
```

## ✨ Features

- 🎯 **Go up by name**, not by counting `../../..`
- 🌍 **Non-ASCII friendly**: works with directory names like `weiß` when the charset is UTF-8
- 📂 **Spaces are fine**: `upto "My Documents"`
- ⌨️ **Tab completion** with the folders of your current path
- ↩️ Returns `1` (and stays put) when the name is not in your path

## 📦 Install

With [Fisher] 4 (fish 3 or newer):

```fish
fisher install markcial/upto
```

### Legacy fisherman

Fisherman, and Fisher before version 4, used `add` instead of `install`:

```fish
fisher add markcial/upto
```

Fisher 4 removed `add`. Use `fisher install` above.

## 🚀 Usage

Inside */home/username/Projects/project_a/src/Core*

```fish
$ upto Projects
$ pwd
/home/username/Projects
```

It works on directories with non ASCII characters if the charset used is UTF-8.

Inside */home/weiß/projekten/src/Core*

```fish
$ upto weiß
$ pwd
/home/weiß
```

You can use it inside directories with spaces too.

Inside */home/User/My Documents/xls/2016/essays*

```fish
$ upto "My Documents"
$ pwd
/home/User/My Documents
```

## 🧪 Tests

Tests are written with [fishtape](https://github.com/jorgebucaran/fishtape) in `test/upto.fish`.
<!-- TODO(Marc): CI was Travis (travis-ci.org, now shut down), so there is no working build badge. Optionally port .travis.yml to GitHub Actions and add its badge. -->

## 📄 License

[MIT](LICENSE)

[Fisher]: https://github.com/jorgebucaran/fisher

---

<div align="center">

Made by **Marc Garcia** · [marcgarcia.dev](https://marcgarcia.dev) · [@_marc_garcia on X](https://x.com/_marc_garcia) · [GitHub](https://github.com/Markcial)

</div>
