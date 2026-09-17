#!/usr/bin/env zsh
# Original Independence Day-inspired ANSI terminal art and brief quote references.

local reset=$'\033[0m' cyan=$'\033[38;5;51m' blue=$'\033[38;5;33m'
local gold=$'\033[38;5;220m' violet=$'\033[38;5;141m' dim=$'\033[38;5;244m'

case ${INDEPENDENCE_DAY_ART_INDEX:-$((RANDOM % 3))} in
  0) printf '%s\n' \
    "${dim}              .-=========-.${reset}" \
    "${violet}        .---' ${cyan} .-----. ${violet} '---.${reset}" \
    "${violet}      .'     ${cyan}/  o o  \\${violet}     '.${reset}" \
    "${blue}     /     .-'${cyan}  _____  ${blue}'-.     \\${reset}" \
    "${blue}    |     / ${cyan} .'     '. ${blue} \\     |${reset}" \
    "${violet}     \\    '._${cyan}\\_______/${violet}_.'    /${reset}" \
    "${dim}      '._                 _.'${reset}" \
    "${cyan}        CITY-SCALE MOTHERSHIP${reset}" \
    "${gold}   \"We will not go quietly into the night.\"${reset}" ;;
  1) printf '%s\n' \
    "${dim}             _.-^-.${reset}" \
    "${blue}       __.--'  ${cyan}___${blue}  '--.__${reset}" \
    "${blue}     .'     .-'${cyan}o o${blue}'-.     '.${reset}" \
    "${violet}    /    .-' ${cyan} /_\\ ${violet} '-.    \\${reset}" \
    "${violet}   |___/_____${cyan}/___\\${violet}_____\\___|${reset}" \
    "${cyan}          ALIEN INTERCEPTOR${reset}" \
    "${gold}       \"Welcome to Earth.\"${reset}" ;;
  2) printf '%s\n' \
    "${dim}             .-''''-.${reset}" \
    "${violet}           .'  ${cyan}o    o${violet}  '.${reset}" \
    "${violet}          /      ${cyan}<>${violet}      \\${reset}" \
    "${blue}         |    .-${cyan}||${blue}-.    |${reset}" \
    "${blue}         |   / ${cyan}||||${blue} \\   |${reset}" \
    "${dim}          \\  '------'  /${reset}" \
    "${cyan}       EXTRATERRESTRIAL SIGNAL${reset}" \
    "${gold} \"Today, we celebrate our Independence Day!\"${reset}" ;;
  *) print -u2 'INDEPENDENCE_DAY_ART_INDEX must be between 0 and 2'; exit 2 ;;
esac
