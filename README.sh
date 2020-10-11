#!/bin/sh
cat << EOF
# Awfice - the world smallest office suite

Awfice is a collection of tiny office suite apps:

* a word processor, a spreadsheet, a drawing app and a presentation maker
* each less than 1KB of plain JavaScript
* each is literally just one line of code
* packaged as data URLs, so you can use them right away, without downloading or installing
* you can also use them offline
* but they can't store their state, so whatever you type there would be lost on page refresh
* which can be also sold as a "good for your privacy" feature

## Text editor - $(wc -c < edit.html) bytes!

Data-URL (copy and add to bookmarks):

\`\`\`html
data:text/html,$(cat edit.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/edit.html)

## Spreadsheet - $(wc -c < calc.html) bytes!

Data-URL (copy and add to bookmarks):

\`\`\`html
data:text/html,$(cat calc.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calc.html)

## Drawing app - $(wc -c < draw.html) bytes!

Data-URL (copy and add to bookmarks):

\`\`\`html
data:text/html,$(cat draw.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/draw.html)

## Presentation maker

## Drawing app - $(wc -c < beam.html) bytes!

Data-URL (copy and add to bookmarks):

\`\`\`html
data:text/html,$(cat beam.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/beam.html)

EOF
