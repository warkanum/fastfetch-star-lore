#!/usr/bin/env zsh
# Original, Star Trek-inspired ANSI terminal art.

local reset=$'\033[0m' cyan=$'\033[38;5;51m' blue=$'\033[38;5;33m'
local gold=$'\033[38;5;220m' green=$'\033[38;5;46m' violet=$'\033[38;5;141m'
local red=$'\033[38;5;203m' orange=$'\033[38;5;208m' dim=$'\033[38;5;244m'

# Set STAR_TREK_ART_INDEX=0..6 to preview or pin a particular artifact.
case ${STAR_TREK_ART_INDEX:-$((RANDOM % 7))} in
  0) printf '%s\n' \
    "${dim}          .---------.${reset}" \
    "${gold}        .'  ${cyan}△  *  △${gold}  '.${reset}" \
    "${gold}       /   .-------.   \\${reset}" \
    "${gold}      |   | ${cyan}CALLING${gold} |   |${reset}" \
    "${gold}      |   | ${blue}  o o  ${gold}|   |${reset}" \
    "${gold}       \\   '-------'   /${reset}" \
    "${dim}        '._       _.'${reset}" \
    "${cyan}          COMMUNICATOR${reset}" ;;
  1) printf '%s\n' \
    "${dim}         .-----------.${reset}" \
    "${blue}        /  ${cyan} .-----. ${blue}  \\${reset}" \
    "${blue}       |  ${cyan} | ${green}SCAN${cyan} |  ${blue}|${reset}" \
    "${blue}       |  ${cyan} | ${green}o o ${cyan}|  ${blue}|${reset}" \
    "${blue}       |  ${cyan} '-----'  ${blue}|${reset}" \
    "${blue}       |  ${gold} |||||||  ${blue}|${reset}" \
    "${dim}        \\___________/${reset}" \
    "${cyan}            TRICORDER${reset}" ;;
  2) printf '%s\n' \
    "${dim}             ______${reset}" \
    "${gold}        .---' ${cyan}o o${gold} '---.${reset}" \
    "${gold}       /     ${cyan}△${gold}       \\${reset}" \
    "${gold}      |   .-------.   |${reset}" \
    "${dim}      |___|       |___|${reset}" \
    "${blue}          | ${cyan}=====${blue} |${reset}" \
    "${blue}          |_________|${reset}" \
    "${gold}        TYPE-2 PHASER${reset}" ;;
  3) printf '%s\n' \
    "${dim}            |     |${reset}" \
    "${blue}           /|${cyan}  *  ${blue}|\\${reset}" \
    "${blue}          / |${cyan} *** ${blue}| \\${reset}" \
    "${cyan}         |  |${blue}*****${cyan}|  |${reset}" \
    "${cyan}         |  |${violet}*****${cyan}|  |${reset}" \
    "${blue}          \\ |${cyan} *** ${blue}| /${reset}" \
    "${dim}           \\|  *  |/${reset}" \
    "${cyan}            WARP CORE${reset}" ;;
  4) printf '%s\n' \
    "${green}         .-----------.${reset}" \
    "${green}        / ${dim}[] [] [] []${green} \\${reset}" \
    "${green}       /${dim}[]${green} .-------. ${dim}[]${green}\\${reset}" \
    "${green}      | ${dim}[]${green}| ${cyan}◇${green} | ${dim}[] ${green}|${reset}" \
    "${green}      | ${dim}[]${green}'-------'${dim}[] ${green}|${reset}" \
    "${green}       \\ ${dim}[] [] [] []${green} /${reset}" \
    "${green}        '-----------'${reset}" \
    "${green}            BORG CUBE${reset}" ;;
  5) printf '%s\n' \
    "${dim}        .--------------.${reset}" \
    "${violet}       / ${orange}LCARS${violet}          \\${reset}" \
    "${violet}      | ${cyan}----------------${violet} |${reset}" \
    "${violet}      | ${gold}  ◖  ${cyan}STATUS: OK${gold}  ◗${violet} |${reset}" \
    "${violet}      | ${cyan}----------------${violet} |${reset}" \
    "${violet}      | ${orange}  ◉  ◉  ◉  ◉  ◉${violet}  |${reset}" \
    "${dim}       \\________________/${reset}" \
    "${orange}              P A D D${reset}" ;;
  6) printf '%s\n' \
    "${red}       _.-.         .-._${reset}" \
    "${red}     .'   \\       /   '.${reset}" \
    "${red}    /   .--\\_____/--.   \\${reset}" \
    "${gold}   |   /    ${red}\\___/${gold}    \\   |${reset}" \
    "${gold}   |   \\    ${red}/   \\${gold}    /   |${reset}" \
    "${red}    \\   '--/_____|--'   /${reset}" \
    "${red}     '.      /   \\   .'${reset}" \
    "${gold}           B A T ' L E T H${reset}" ;;
  *) print -u2 'STAR_TREK_ART_INDEX must be between 0 and 6'; exit 2 ;;
esac
