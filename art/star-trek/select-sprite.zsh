#!/usr/bin/env zsh
# Prints a randomly selected native Kitty image for the Star Trek category.

local script_dir=${0:A:h}
local -a sprites=(
  federation-starship.png
  klingon-bird-of-prey.png
  vulcan-science-vessel.png
  tricorder-sprite.png
  transporter.png
  vulcan-salute.png
)

local index=${STAR_TREK_SPRITE_INDEX:-$((RANDOM % ${#sprites[@]} + 1))}
if (( index < 1 || index > ${#sprites[@]} )); then
  print -u2 "STAR_TREK_SPRITE_INDEX must be between 1 and ${#sprites[@]}"
  exit 2
fi

print -r -- "$script_dir/images/${sprites[index]}"
