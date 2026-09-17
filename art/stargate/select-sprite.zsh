#!/usr/bin/env zsh
# Prints a randomly selected native Kitty image for the Stargate category.

local script_dir=${0:A:h}
local -a sprites=(
  active-stargate.png
  dhd.png
  zpm.png
  hand-device.png
  staff-weapon.png
  ancient-chair.png
  malp.png
)

local index=${STARGATE_SPRITE_INDEX:-$((RANDOM % ${#sprites[@]} + 1))}
if (( index < 1 || index > ${#sprites[@]} )); then
  print -u2 "STARGATE_SPRITE_INDEX must be between 1 and ${#sprites[@]}"
  exit 2
fi

print -r -- "$script_dir/images/${sprites[index]}"
