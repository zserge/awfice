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

## Text editor - 88 bytes!

A simple rich text editor. Type whatever you want, it won't be saved anywhere, but it might be convenient for quick throwaway notes. You should be able to use Ctrl+B and Ctrl+I to mark text selection as bold or italic. Undo/redo should work as well. You can also copy/paste text and images from other sources.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<body contenteditable style=line-height:1.5;font-size:20px onload=document.body.focus()>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/edit.html)

## Spreadsheet - 679 bytes!

A very basic spreadsheet with math formulas. It has 100 rows and 26 columns (A..Z). If the value in the cell starts with an "=" = it is evaluated as a formula. You may refer to other cell values, i.e. "=(A10+A11)/A12". Under the hood it uses eval(), so be careful.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<table id=t><script>z=Object.defineProperty,p=parseFloat;for(I=[],D={},C={},q=_=>I.forEach(e=>{try{e.value=D[e.id]}catch(e){}}),i=0;i<101;i++)for(r=t.insertRow(-1),j=0;j<27;j++)c=String.fromCharCode(65+j-1),d=r.insertCell(-1),d.innerHTML=i?j?"":i:c,i*j&&I.push(d.appendChild((f=>(f.id=c+i,f.onfocus=e=>f.value=C[f.id]||"",f.onblur=e=>{C[f.id]=f.value,q()},get=_=>{v=C[f.id]||"";if("="!=v.charAt(0))return isNaN(p(v))?v:p(v);with(D)return eval(v.slice(1))},a={get},z(D,f.id,a),z(D,f.id.toLowerCase(),a),f))(document.createElement`input`)))</script><style>#t{border-collapse:collapse}td{border:1px solid gray;text-align:right}input{border:none;width:4rem;text-align:center}</style>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calc.html)

## Drawing app - 327 bytes!

Nothing simpler than drawing on a blank canvas with mouse. Works with touch screens as well. To save your results... well, do a screenshot maybe...

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<canvas id=v><script>d=document,d.body.style.margin=0,P="onpointer",c=v.getContext`2d`,v.width=innerWidth,v.height=innerHeight,c.lineWidth=2,f=0,d[P+"down"]=e=>{f=e.pointerId+1;e.preventDefault();c.beginPath();c.moveTo(e.x,e.y)};d[P+"move"]=e=>{f==e.pointerId+1&&c.lineTo(e.x,e.y);c.stroke()},d[P+"up"]=_=>f=0</script></canvas>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/draw.html)

## Presentation maker - 622 bytes!

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
data:text/html,<body><script>d=document;for(i=0;i<50;i++)d.body.innerHTML+='<div style="position:relative;width:90%;padding-top:60%;margin:5%;border:1px solid silver;page-break-after:always"><div contenteditable style=outline:none;position:absolute;right:10%;bottom:10%;left:10%;top:10%;font-size:5vmin>';d.querySelectorAll("div>div").forEach(e=>e.onkeydown=e=>{n=e.ctrlKey&&e.altKey&&e.keyCode-49,f="formatBlock",j="justify",x=[f,f,j+"Left",j+"Center",j+"Right","outdent","indent","insertUnorderedList"][n],y=["<h1>","<div>"][n],x&&d.execCommand(x,!1,y)})</script><style>@page{size:6in 8in landscape}@media print{*{border:0 !important}}
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/beam.html)

## Code editor - 686 bytes!

A simple code editor. You can type in HTML, CSS & Javascript.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<body oninput="i.srcdoc=h.value+'<style>'+c.value+'</style><script>'+j.value+'</script>'"><style>textarea,iframe{width:100%;height:50%;}body{margin:0;}textarea{width: 33.33%;font-size:18px;padding:0.5em}</style><textarea placeholder="HTML" id="h"></textarea><textarea placeholder="CSS" id="c"></textarea><textarea placeholder="JS" id="j"></textarea><iframe id="i"></iframe><script>document.querySelectorAll("textarea").forEach((t)=>t.addEventListener("keydown",function(t){var e,s;"Tab"==t.key&&(t.preventDefault(),e=this.selectionStart,s=this.selectionEnd,this.value=this.value.substring(0,e)+"  "+this.value.substring(s),this.selectionStart=this.selectionEnd=e+1)}))</script></body>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/code.html)

## Calculator -      657 bytes!

A simple calculator which supports the basic operational symbol to calculate.

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<table style="text-align: center;width:80vw;margin: 0 auto;"><tbody><tr><td colspan="4"><textarea></textarea></td></tr></tbody><script>let d=document;let tbl=d.querySelector('tbody');let z=d.querySelector('textarea');let oc=(x)=>z.value+=x;let cl=()=>z.value='';let re=()=>{try{z.value=eval(z.value);}catch(error){cl();}};[[1,2,3,'+'],[4,5,6,'-'],[7,8,9,'*'],['C',0,'=','/']].forEach((a)=>{let r=d.createElement('tr');r.style.lineHeight='64px';tbl.appendChild(r);a.forEach((b)=>{let tb=d.createElement('tb');tb.innerText=b;tb.style.padding='16px';tb.style.border='1px solid';r.appendChild(tb);tb.onclick=b==='='?re:b==='C'?cl:()=>oc(b);})})</script></table>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calculator.html)


## Start screen - 4103 bytes!

A single page, showing all apps with an icon. You can drag the icons to your bookmarks/favorites, so you can run them completely offline. When you click an icon, the app will be loaded from GitHub. 

By the way: this page is all you need, since it contains all code!

Copy and add to bookmarks or open in the URL bar:

```html
data:text/html,<title>Awfice</title><meta charset="utf-8"><base href="https://htmlpreview.github.io/"><div><a href="data:text/html,<body contenteditable style=line-height:1.5;font-size:20px>" onclick="location.href='?https://github.com/zserge/awfice/blob/main/edit.html';return false"><b>📝</b>Text editor</a><a href="data:text/html,<table id=t><script>z=Object.defineProperty,p=parseFloat;for(I=[],D={},C={},q=_=>I.forEach(e=>{try{e.value=D[e.id]}catch(e){}}),i=0;i<101;i++)for(r=t.insertRow(-1),j=0;j<27;j++)c=String.fromCharCode(65+j-1),d=r.insertCell(-1),d.innerHTML=i?j?&quot;&quot;:i:c,i*j&amp;&amp;I.push(d.appendChild((f=>(f.id=c+i,f.onfocus=e=>f.value=C[f.id]||&quot;&quot;,f.onblur=e=>{C[f.id]=f.value,q()},get=_=>{v=C[f.id]||&quot;&quot;;if(&quot;=&quot;!=v.charAt(0))return isNaN(p(v))?v:p(v);with(D)return eval(v.slice(1))},a={get},z(D,f.id,a),z(D,f.id.toLowerCase(),a),f))(document.createElement`input`)))</script><style>#t{border-collapse:collapse}td{border:1px solid gray;text-align:right}input{border:none;width:4rem;text-align:center}</style>" onclick="location.href='?https://github.com/zserge/awfice/blob/main/calc.html';return false"><b>🧮</b>Spreadsheet</a><a href="data:text/html,<canvas id=v><script>d=document,d.body.style.margin=0,P=&quot;onpointer&quot;,c=v.getContext`2d`,v.width=innerWidth,v.height=innerHeight,c.lineWidth=2,f=0,d[P+&quot;down&quot;]=e=>{f=e.pointerId+1;e.preventDefault();c.beginPath();c.moveTo(e.x,e.y)};d[P+&quot;move&quot;]=e=>{f==e.pointerId+1&amp;&amp;c.lineTo(e.x,e.y);c.stroke()},d[P+&quot;up&quot;]=_=>f=0</script></canvas>" onclick="location.href='?https://github.com/zserge/awfice/blob/main/draw.html';return false"><b>🎨</b>Drawing app</a><a href="data:text/html,<body><script>d=document;for(i=0;i<50;i++)d.body.innerHTML+='<div style=&quot;position:relative;width:90%;padding-top:60%;margin:5%;border:1px solid silver;page-break-after:always&quot;><div contenteditable style=outline:none;position:absolute;right:10%;bottom:10%;left:10%;top:10%;font-size:5vmin>';d.querySelectorAll(&quot;div>div&quot;).forEach(e=>e.onkeydown=e=>{n=e.ctrlKey&amp;&amp;e.altKey&amp;&amp;e.keyCode-49,f=&quot;formatBlock&quot;,j=&quot;justify&quot;,x=[f,f,j+&quot;Left&quot;,j+&quot;Center&quot;,j+&quot;Right&quot;,&quot;outdent&quot;,&quot;indent&quot;,&quot;insertUnorderedList&quot;][n],y=[&quot;<h1>&quot;,&quot;<div>&quot;][n],x&amp;&amp;d.execCommand(x,!1,y)})</script><style>@page{size:6in 8in landscape}@media print{*{border:0 !important}}" onclick="location.href='?https://github.com/zserge/awfice/blob/main/beam.html';return false"><b>📽</b>Presentation maker</a><a href="data:text/html,<body oninput=&quot;i.srcdoc=h.value+'<style>'+c.value+'</style><script>'+j.value+'</script>'&quot;><style>textarea,iframe{width:100%;height:50%;}body{margin:0;}textarea{width: 33.33%;font-size:18px;padding:0.5em}</style><textarea placeholder=&quot;HTML&quot; id=&quot;h&quot;></textarea><textarea placeholder=&quot;CSS&quot; id=&quot;c&quot;></textarea><textarea placeholder=&quot;JS&quot; id=&quot;j&quot;></textarea><iframe id=&quot;i&quot;></iframe><script>document.querySelectorAll(&quot;textarea&quot;).forEach((t)=>t.addEventListener(&quot;keydown&quot;,function(t){var e,s;&quot;Tab&quot;==t.key&amp;&amp;(t.preventDefault(),e=this.selectionStart,s=this.selectionEnd,this.value=this.value.substring(0,e)+&quot;  &quot;+this.value.substring(s),this.selectionStart=this.selectionEnd=e+1)}))</script></body>" onclick="location.href='?https://github.com/zserge/awfice/blob/main/code.html';return false"><b>⌨️</b>Code editor</a><a href="https://github.com/zserge/awfice"><b>ℹ️</b>Help</a></div><footer>Draw an icon to your bookmarks to create a favelet (offline), or click to run online.</footer><style>div{ display:flex;flex-flow:row wrap;justify-content:center;align-items:center;width:80vw;height:60vh;margin: 10vh auto 30vh auto}a{ display:block; text-align:center;width:125px;height:125px;margin:5px;padding:5px;text-decoration:none}a b{ display:block;font-size:75px}a:active,a:hover{background:ivory}footer{position:sticky;text-align:center;bottom:0}
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/index.html)

## Contributions

The code is distributed under MIT license. PRs are always welcome, especially if they fix something or make the code smaller, or add features that are valuable, but do not require a lot of code.

To modify something - edit HTML files directly. There is README.sh script that re-generates the README and embeds apps code into it.
