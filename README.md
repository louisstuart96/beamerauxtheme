# Auxiliary outer and inner themes for LaTeX beamer class

[![License](https://img.shields.io/github/license/louisstuart96/beamerauxtheme.svg)](https://github.com/louisstuart96/beamerauxtheme/blob/master/LICENSE)
[![CTAN Link](https://img.shields.io/ctan/v/beamerauxtheme.svg)](https://ctan.org/pkg/beamerauxtheme)

Author: Louis Stuart (louisstuart96@gmail.com)

Version: 2020-08-10 v1.02a

This package bundle is distributed under the LaTeX Project Public License, version 1.3c or later. See [LICENSE](https://github.com/louisstuart96/beamerauxtheme/blob/master/LICENSE) for detailed information.

## Outer Theme

### Split with mini frames

> Usage: `\useoutertheme{splitwithminiframes}`

This theme inherits primitive `split` outer theme, with additional slide entries after each subsection entry.

### Sidebar with mini frames

> Usage: `\useoutertheme{sidebarwithminiframes}`

This theme inherits primitive `sidebar` outer theme, with additional slide entries.

**Note**: 
1. The entries by `\subsubsection` are excluded.
2. This theme doesn't support `hideothersubsections` and `hideallsubsections`. All entries are loaded in the sidebar. Other options supported by `sidebar` are inherited.

### Two-line headline theme

> Usage: `\useoutertheme{twolines}`

The `headline` in this theme behaves like the compressed version of `headline` in the `split` theme, except that section entries and subsection entries are in separated lines. The `footline` is empty.

## Inner Theme

### Simple lines

> Usage: `\useinnertheme{simplelines}`

This theme redefines `title page`, `part page`, `section page` and three types of blocks. In particular, blocks are typeset as a whole color box, with a horizontal separation bar between `block title` and `block body`.

**Note**: This theme might be incompatible with color themes that simply reverse foreground and background colors of titles, including `seahorse`, `orchid` and `whale`.
