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
* this project is only a half-joke, I actually use a few Awfice apps as quick scratchpads.
* the only way to save your job is to save a HTML or send it to the printer/print to PDF.

## Text editor - $(wc -c < edit.html) bytes!

A simple rich text editor. Type whatever you want, it won't be saved anywhere, but it might be convenient for quick throwaway notes. You should be able to use Ctrl+B and Ctrl+I to mark text selection as bold or italic. Undo/redo should work as well. You can also copy/paste text and images from other sources.

Copy and add to bookmarks or open in the URL bar:

\`\`\`html
data:text/html,$(cat edit.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/edit.html)

## Spreadsheet - $(wc -c < calc.html) bytes!

A very basic spreadsheet with math formulas. It has 100 rows and 26 columns (A..Z). If the value in the cell starts with an "=" = it is evaluated as a formula. You may refer to other cell values, i.e. "=(A10+A11)/A12". Under the hood it uses eval(), so be careful.

Copy and add to bookmarks or open in the URL bar:

\`\`\`html
data:text/html,$(cat calc.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calc.html)

## Drawing app - $(wc -c < draw.html) bytes!

Nothing simpler than drawing on a blank canvas with mouse. Works with touch screens as well. To save your results... well, do a screenshot maybe...

Copy and add to bookmarks or open in the URL bar:

\`\`\`html
data:text/html,$(cat draw.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/draw.html)

## Presentation maker - $(wc -c < beam.html) bytes!

Just a variant of a rich text editor with some hotkeys. There are 50 blank slides for you (I hope you don't need to bore your audience with more slides). Each slide is a rich text editor, but there are some hotkeys to make styling better:

* Ctrl+Alt+1: Header
* Ctrl+Alt+2: Normal style
* Ctrl+Alt+3: Align left
* Ctrl+Alt+4: Align center
* Ctrl+Alt+5: Align right
* Ctrl+Alt+6: Outdent
* Ctrl+Alt+7: Indent
* Ctrl+Alt+8: Make a list

Copy and add to bookmarks or open in the URL bar:

\`\`\`html
data:text/html,$(cat beam.html)
\`\`\`

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/beam.html)

## Contributions

The code is distributed under MIT license. PRs are always welcome, especially if they fix something or make the code smaller, or add features that are valuable, but do not require a lot of code.

To modify something - edit HTML files directly. There is README.sh script that re-generates the README and embeds apps code into it.
EOF
