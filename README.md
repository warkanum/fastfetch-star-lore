# Fastfetch Star Lore

Colorful, lore-inspired ASCII artwork for [Fastfetch](https://github.com/fastfetch-cli/fastfetch). It is made for Kitty and other modern terminals, but contains no image assets or terminal-specific graphics protocol: the art is portable ANSI text.

## Franchises

| Category | Status | Contents |
| --- | --- | --- |
| `stargate` | Available | Full-color Kitty sprites: active Stargate, DHD, ZPM, Goa'uld hand device, staff weapon, Ancient chair, and MALP |
| `star-trek` | Available | Communicator, tricorder, phaser, warp core, Borg cube, PADD, and bat'leth |
| `star-wars` | Planned | Reserved for future artwork |

## Install

Fastfetch and Zsh are required. Clone the repository, then install it:

```sh
git clone git@github.com:warkanum/fastfetch-star-lore.git
cd fastfetch-star-lore
./install.sh
```

This installs the command into `~/.local/bin` and its art into `~/.local/share/fastfetch-star-lore`. Ensure `~/.local/bin` is on your `PATH`.

To also start it automatically in new Zsh terminals:

```sh
./install.sh --shell
```

The installer adds a clearly marked block to `~/.zshrc` and will not add it twice.

## Use

Run a category manually:

```sh
fastfetch-star-lore stargate
```

By default Fastfetch uses its normal configuration. To use a specific Fastfetch configuration:

```sh
fastfetch-star-lore stargate --config ~/.config/fastfetch/config-pokemon.jsonc
```

In Kitty, Stargate uses native full-color pixel-art sprites and changes on each invocation. Pin one with `STARGATE_SPRITE_INDEX` from `1` through `7` (the active Stargate is `1`):

```sh
STARGATE_SPRITE_INDEX=2 fastfetch-star-lore stargate
```

In another terminal emulator, it falls back to ANSI art. Set `STAR_LORE_RENDERER=raw` to use that fallback in Kitty too.

Star Trek uses the equivalent `STAR_TREK_ART_INDEX` variable:

```sh
STAR_TREK_ART_INDEX=3 fastfetch-star-lore star-trek
```

## Add a franchise

Put its renderer at `art/<category>/art.zsh`, add the category to `bin/fastfetch-star-lore`, and document it in the table above. The renderer writes ANSI art to standard output; the launcher supplies it to Fastfetch as a `file-raw` logo.

## License

[MIT](LICENSE)
