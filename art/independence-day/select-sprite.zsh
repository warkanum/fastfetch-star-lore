#!/usr/bin/env zsh
# Prints a randomly selected native Kitty image for the Independence Day category.

local script_dir=${0:A:h}
local -a sprites=(
  mothership.png
  interceptor.png
  alien-ambassador.png
  city-beam.png
  resistance-interceptor.png
  signal-beacon.png
)

local index=${INDEPENDENCE_DAY_SPRITE_INDEX:-$((RANDOM % ${#sprites[@]} + 1))}
if (( index < 1 || index > ${#sprites[@]} )); then
  print -u2 "INDEPENDENCE_DAY_SPRITE_INDEX must be between 1 and ${#sprites[@]}"
  exit 2
fi

print -r -- "$script_dir/images/${sprites[index]}"
