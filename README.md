# Rembetiko

Modern theme for the [rembetiko.gr](https://rembetiko.gr) forum, inspired by
the card-based look of meta.discourse.org while keeping the forum's existing
branding (blue header, logo, and color palette).

## Color schemes

| Scheme          | Notes                                             |
| --------------- | ------------------------------------------------- |
| Rembetiko Light | Same values as the current light scheme           |
| Rembetiko Dark  | Same values as the current "skoteino" dark scheme |

`hover` and `selected` are set to soft blue tints to match the new surfaces.

## Settings

| Setting         | Default | Description                                    |
| --------------- | ------- | ---------------------------------------------- |
| `page_gradient` | true    | Soft branded gradient behind the page content  |
| `card_surfaces` | true    | Topic lists, topics, and pages as raised cards |

## Structure

- `common/color_definitions.scss` — per-scheme `--rbt-*` tokens
- `stylesheets/brand/` — maps tokens onto core Discourse variables
- `stylesheets/app/` — per-area styles (header, sidebar, topic list, …)

## Installing

Upload with `discourse_theme upload .` (or Admin → Themes → Install from a git
repository), then under Admin → Appearance → Themes:

1. Add the existing components (custom header links, discotoc, reader mode,
   etc.) to this theme.
2. Set "Rembetiko Light" as the light scheme and "Rembetiko Dark" as the dark
   scheme.
