#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [--shell]\n' "${0##*/}"
}

install_shell=false
while [[ $# -gt 0 ]]; do
  case $1 in
    --shell) install_shell=true ;;
    --help|-h) usage; exit 0 ;;
    *) printf 'Unknown option: %s\n' "$1" >&2; usage >&2; exit 2 ;;
  esac
  shift
done

repo_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
prefix="${XDG_DATA_HOME:-"$HOME/.local/share"}/fastfetch-star-lore"
bin_dir="$HOME/.local/bin"

mkdir -p "$prefix" "$prefix/bin" "$bin_dir"
rm -rf "$prefix/art"
cp -R "$repo_dir/art" "$prefix/art"
install -m 755 "$repo_dir/bin/fastfetch-star-lore" "$prefix/bin/fastfetch-star-lore"
ln -sfn "$prefix/bin/fastfetch-star-lore" "$bin_dir/fastfetch-star-lore"

if "$install_shell"; then
  zshrc="$HOME/.zshrc"
  marker='# fastfetch-star-lore'
  touch "$zshrc"
  if ! grep -Fqx "$marker" "$zshrc"; then
    cat >> "$zshrc" <<'EOF'

# fastfetch-star-lore
fastfetch-star-lore stargate --config "$HOME/.config/fastfetch/config-pokemon.jsonc"
EOF
  fi
fi

printf 'Installed Fastfetch Star Lore. Run: fastfetch-star-lore stargate\n'
