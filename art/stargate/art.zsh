#!/usr/bin/env zsh
# Original, Stargate-inspired ANSI terminal art.

local reset=$'\033[0m' cyan=$'\033[38;5;51m' blue=$'\033[38;5;33m'
local gold=$'\033[38;5;220m' green=$'\033[38;5;46m' violet=$'\033[38;5;141m'
local red=$'\033[38;5;203m' dim=$'\033[38;5;244m'

# Set STARGATE_ART_INDEX=0..6 to preview or pin a particular artifact.
case ${STARGATE_ART_INDEX:-$((RANDOM % 7))} in
  0) printf '%s\n' \
    "${dim}          .-=======-.${reset}" \
    "${cyan}       .-' ${gold}△  ◇  □ ${cyan} '-.${reset}" \
    "${cyan}     .' ${gold}○${cyan}    .---.    ${gold}☆ ${cyan}'.${reset}" \
    "${cyan}    / ${gold}♧${cyan}    / ${blue}o o ${cyan}\\    ${gold}♢ ${cyan}\\${reset}" \
    "${cyan}   | ${gold}⌘${cyan}    | ${blue}  *  ${cyan}|    ${gold}☽ ${cyan}|${reset}" \
    "${cyan}    \\ ${gold}◇${cyan}    '---'    ${gold}○ ${cyan}/${reset}" \
    "${dim}       '-._________.-'${reset}" \
    "${gold}          D H D  ONLINE${reset}" ;;
  1) printf '%s\n' \
    "${dim}            .-.-.${reset}" \
    "${cyan}       .-.-. / ${blue}* ${cyan}\\ .-.-.${reset}" \
    "${cyan}      /     \\___/     \\${reset}" \
    "${dim}     /   .-----------.   \\${reset}" \
    "${dim}    |   / ${violet}╲ ╲ ╲ ╲ ╲${dim} \\   |${reset}" \
    "${dim}    |   \\ ${violet}╱ ╱ ╱ ╱ ╱${dim} /   |${reset}" \
    "${cyan}     \\   '-----------'   /${reset}" \
    "${violet}       ZERO POINT MODULE${reset}" ;;
  2) printf '%s\n' \
    "${blue}          .--. .--.${reset}" \
    "${cyan}         / ${violet}::${cyan} V ${violet}::${cyan} \\${reset}" \
    "${cyan}        /____${blue}***${cyan}____\\${reset}" \
    "${dim}       |   .--+--.   |${reset}" \
    "${cyan}       |  / ${blue}o o${cyan} \\  |${reset}" \
    "${cyan}       | |   ${violet}△${cyan}   | |${reset}" \
    "${blue}      /_____/   \\_____\\${reset}" \
    "${violet}       ANCIENT CONTROL CHAIR${reset}" ;;
  3) printf '%s\n' \
    "${dim}            .---.${reset}" \
    "${gold}           / ${red}◉${gold}   \\${reset}" \
    "${gold}          |  .-.  |${reset}" \
    "${gold}       ___| / ${red}* ${gold}\\ |___${reset}" \
    "${gold}     .'   | |${red} ***${gold}| |   '.${reset}" \
    "${red}    \\       \___/       /${reset}" \
    "${red}     '._   ENERGY   _.'${reset}" \
    "${gold}       GOA'ULD HAND DEVICE${reset}" ;;
  4) printf '%s\n' \
    "${gold}             /\\${reset}" \
    "${gold}        .---'  '---.${reset}" \
    "${gold}       /  ${red}◉     ◉${gold}  \\${reset}" \
    "${gold}      |      ${red}△${gold}      |${reset}" \
    "${gold}       \\   .---.   /${reset}" \
    "${gold}            | |${reset}" \
    "${red}           _| |_${reset}" \
    "${gold}          JAFFA STAFF WEAPON${reset}" ;;
  5) printf '%s\n' \
    "${dim}          .---------.${reset}" \
    "${cyan}        .' ${violet}:: :: ::${cyan} '.${reset}" \
    "${cyan}       / ${violet}::${cyan}   .-.   ${violet}:: ${cyan}\\${reset}" \
    "${cyan}      | ${violet}::${cyan}  / ${blue}o${cyan} \\  ${violet}:: ${cyan}|${reset}" \
    "${cyan}      | ${violet}::${cyan} | ${blue}---${cyan} | ${violet}:: ${cyan}|${reset}" \
    "${cyan}       \\ ${violet}::${cyan}   | |   ${violet}:: ${cyan}/${reset}" \
    "${blue}          _|_| |_|_${reset}" \
    "${violet}       ANCIENT REPOSITORY${reset}" ;;
  6) printf '%s\n' \
    "${dim}          .-=======-.${reset}" \
    "${cyan}         /  ${blue}.---.${cyan}  \\${reset}" \
    "${cyan}        /  / ${green}<> <>${cyan} \\  \\${reset}" \
    "${cyan}       |  | ${green}<> ${gold}* ${green}<>${cyan} |  |${reset}" \
    "${cyan}       |  | ${green}<> <>${cyan} |  |${reset}" \
    "${cyan}        \\  \\ ${blue}'---'${cyan} /  /${reset}" \
    "${blue}      /______/   \\______\\${reset}" \
    "${cyan}        ASGARD BEAM EMITTER${reset}" ;;
  *) print -u2 'STARGATE_ART_INDEX must be between 0 and 6'; exit 2 ;;
esac
