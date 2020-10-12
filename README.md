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

## Text editor - 63 bytes!

A simple rich text editor. Type whatever you want, it won't be saved anywhere, but it might be convenient for quick throwaway notes. You should be able to use Ctrl+B and Ctrl+I to mark text selection as bold or italic. Undo/redo should work as well. You can also copy/paste text and images from other sources.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<body contenteditable style="line-height:1.5;font-size:20px;">
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/edit.html)

## Spreadsheet - 741 bytes!

A very basic spreadsheet with math formulas. It has 100 rows and 26 columns (A..Z). If the value in the cell starts with an "=" = it is evaluated as a formula. You may refer to other cell values, i.e. "=(A10+A11)/A12". Under the hood it uses eval(), so be careful.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<table id="t"><script>var z=Object.defineProperty,p=parseFloat;for(I=[],D={},C={},calc=()=>I.forEach(e=>{try{e.value=D[e.id]}catch(e){}}),t.style.borderCollapse="collapse",i=0;i<101;i++)for(r=t.insertRow(-1),j=0;j<27;j++)c=String.fromCharCode(65+j-1),d=r.insertCell(-1),d.style.border="1px solid gray",d.style.textAlign="right",d.innerHTML=i?j?"":i:c,i*j&&I.push(d.appendChild((f=>(f.id=c+i,f.style.border="none",f.style.width="4rem",f.style.textAlign="right",f.onfocus=e=>f.value=C[f.id]||"",f.onblur=e=>{C[f.id]=f.value,calc()},get=()=>{let v=C[f.id]||"";if("="!=v.charAt(0))return isNaN(p(v))?v:p(v);with(D)return eval(v.substring(1))},z(D,f.id,{get:get}),z(D,f.id.toLowerCase(),{get:get}),f))(document.createElement("input"))))</script>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calc.html)

## Drawing app - 410 bytes!

Nothing simpler than drawing on a blank canvas with mouse. Works with touch screens as well. To save your results... well, do a screenshot maybe...

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<canvas id="v"><script>d=document,d.body.style.margin=0,f=0,c=v.getContext("2d"),v.width=innerWidth,v.height=innerHeight,c.lineWidth=2,x=e=>e.clientX||e.touches[0].clientX,y=e=>e.clientY||e.touches[0].clientY,d.onmousedown=d.ontouchstart=e=>{f=1,e.preventDefault(),c.moveTo(x(e),y(e)),c.beginPath()},d.onmousemove=d.ontouchmove=e=>{f&&(c.lineTo(x(e),y(e)),c.stroke())},d.onmouseup=d.ontouchend=e=>f=0</script>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/draw.html)

## Presentation maker - 623 bytes!

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

```html
data:text/html,<body><script>d=document;for(i=0;i<50;i++)d.body.innerHTML+='<div style="position:relative;width:90%;padding-top:60%;margin:5%;border:1px solid silver;page-break-after:always;"><div contenteditable style=outline:none;position:absolute;right:10%;bottom:10%;left:10%;top:10%;font-size:5vmin>';d.querySelectorAll("div>div").forEach(e=>e.onkeydown=e=>{n=e.ctrlKey&&e.altKey&&e.keyCode-49,f="formatBlock",j="justify",x=[f,f,j+"Left",j+"Center",j+"Right","outdent","indent","insertUnorderedList"][n],y=["<h1>","<div>"][n],x&&d.execCommand(x,!1,y)})</script><style>@page{size:6in 8in landscape}@media print{*{border:0 !important}}
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/beam.html)

## Contributions

The code is distributed under MIT license. PRs are always welcome, especially if they fix something or make the code smaller, or add features that are valuable, but do not require a lot of code.

To modify something - edit HTML files directly. There is README.sh script that re-generates the README and embeds apps code into it.
