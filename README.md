# Auxiliary outer and inner themes for LaTeX beamer class

[![license shield]](https://github.com/louisstuart96/beamerauxtheme/blob/master/LICENSE)

[license shield]: https://img.shields.io/github/license/louisstuart96/beamerauxtheme.svg

## Outer Theme

### split with mini frames

This theme inherits primitive `split` outer theme, with additional slide entries after each subsection entry.

### sidebar with mini frames

This theme inherits primitive `sidebar` outer theme, with additional slide entries.

**Note**: 
1. The entries by `\subsubsection` are excluded.
2. This theme doesn't support `hideothersubsections` and `hideallsubsections`. All entries are loaded in the sidebar. Other options supported by `sidebar` are inherited.

### two-line headline theme
The `headline` in this theme behaves like the compressed version of `headline` in the `split` theme, except that section entries and subsection entries are in separated lines. The `footline` is the same as `infolines` theme.

## Inner Theme

### Simple lines

This theme redefines `title page`, `part page`, `section page` and three types of blocks. In particular, blocks are typeset as a whole color box, with a horizontal separation bar between `block title` and `block body`.

**Note**: This theme might be incompatible with color themes that simply reverse foreground and background colors of titles, including `seahorse`, `orchid` and `whale`.
