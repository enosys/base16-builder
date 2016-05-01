#!/bin/sh -eu
# Base16 Solarized - Terminal color setup script
# Ethan Schoonover (http://ethanschoonover.com/solarized)
#



if ! tput ccc; then
  return 1 2>/dev/null || exit 1
fi

tput -S <<EOF
initc  0 0 169 212
initc  1 863 197 185
initc  2 522 600 0
initc  3 710 538 0
initc  4 150 546 824
initc  5 424 444 769
initc  6 165 632 597
initc  7 577 632 632
initc  8 397 483 514

initc  9 863 197 185
initc 10 522 600 0
initc 11 710 538 0
initc 12 150 546 824
initc 13 424 444 769
initc 14 165 632 597

initc 15 993 965 891
initc 16 797 295 87
initc 17 828 212 510
initc 18 28 212 259
initc 19 346 432 459
initc 20 514 581 589
initc 21 934 910 836
EOF

# Text foreground color
printf "\033]10;rgb:%s\033\\" "93/a1/a1" # Base 05

# Text background color
printf "\033]11;rgb:%s\033\\" "00/2b/36" # Base 00

# Text cursor foreground
printf "\033]12;rgb:%s\033\\" "93/a1/a1" # Base 05

# # foreground / background / cursor color
# if [ -n "$ITERM_SESSION_ID" ]; then
#   # iTerm2 proprietary escape codes
#   printf_template_custom="\033]%s%s\033\\"
#   printf $printf_template_custom Pg 93a1a1 # foreground
#   printf $printf_template_custom Ph 002b36 # background
#   printf $printf_template_custom Pi 93a1a1 # bold color
#   printf $printf_template_custom Pj 586e75 # selection color
#   printf $printf_template_custom Pk 93a1a1 # selected text color
#   printf $printf_template_custom Pl 93a1a1 # cursor
#   printf $printf_template_custom Pm 002b36 # cursor text
# fi
