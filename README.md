# Awfice - the world smallest office suite

Awfice is a collection of tiny office suite apps:

* a word processor, a spreadsheet, a drawing app and a presentation maker
* each less than 1KB of plain JavaScript
* each is literally just one line of code
* packaged as data URLs, so you can use them right away, without downloading or installing
* you can also use them offline
* but they can't store their state, so whatever you type there would be lost on page refresh
* which can be also sold as a "good for your privacy" feature

## Text editor - 63 bytes!

Data-URL (copy and add to bookmarks):

```html
data:text/html,<body contenteditable style="line-height:1.5;font-size:20px;">
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/edit.html)

## Spreadsheet - 758 bytes!

Data-URL (copy and add to bookmarks):

```html
data:text/html,<table id="t"><script>for(I=[],D={},C={},calc=()=>I.forEach(e=>{try{e.value=D[e.id]}catch(e){}}),t.style.borderCollapse="collapse",i=0;i<101;i++)for(r=t.insertRow(-1),j=0;j<27;j++)c=String.fromCharCode(65+j-1),d=r.insertCell(-1),d.style.border="1px solid #ccc",d.style.textAlign="right",d.innerHTML=i?j?"":i:c,i*j&&I.push(d.appendChild((f=>(f.id=c+i,f.style.border="none",f.style.width="4rem",f.style.textAlign="right",f.onfocus=e=>f.value=C[f.id]||"",f.onblur=e=>{C[f.id]=f.value,calc()},get=()=>{let v=C[f.id]||"";if("="!=v.charAt(0))return isNaN(parseFloat(v))?v:parseFloat(v);with(D)return eval(v.substring(1))},Object.defineProperty(D,f.id,{get:get}),Object.defineProperty(D,f.id.toLowerCase(),{get:get}),f))(document.createElement("input"))))</script>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/calc.html)

## Drawing app - 410 bytes!

Data-URL (copy and add to bookmarks):

```html
data:text/html,<canvas id="v"><script>d=document,d.body.style.margin=0,f=0,c=v.getContext("2d"),v.width=innerWidth,v.height=innerHeight,c.lineWidth=2,x=e=>e.clientX||e.touches[0].clientX,y=e=>e.clientY||e.touches[0].clientY,d.onmousedown=d.ontouchstart=e=>{f=1,e.preventDefault(),c.moveTo(x(e),y(e)),c.beginPath()},d.onmousemove=d.ontouchmove=e=>{f&&(c.lineTo(x(e),y(e)),c.stroke())},d.onmouseup=d.ontouchend=e=>f=0</script>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/draw.html)

## Presentation maker

## Drawing app - 631 bytes!

Data-URL (copy and add to bookmarks):

```html
data:text/html,<style>@page{size: 6in 8in landscape;}</style><body><script>d=document;for(i=0;i<50;i++)d.body.innerHTML+='<div style="position:relative;width:90%;padding-top:60%;margin:5%;border:1px solid silver;page-break-after:always;"><div contenteditable style="outline:none;position:absolute;right:10%;bottom:10%;left:10%;top:10%;font-size:5vmin;"></div></div>';d.querySelectorAll("div>div").forEach(e=>e.onkeydown=e=>{n=e.ctrlKey&&e.altKey&&e.keyCode-49,x=["formatBlock","formatBlock","justifyLeft","justifyCenter","justifyRight","outdent","indent","insertUnorderedList"][n],y=["<h1>","<div>"][n],x&&document.execCommand(x,!1,y)})</script>
```

[Try it!](https://htmlpreview.github.io/?https://github.com/zserge/awfice/blob/main/beam.html)

