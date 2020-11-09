#!/bin/bash
function to_data_url {
	s=$(cat "$1")
	s=${s//&/&amp;}
	s=${s//\"/&quot;}
	printf "data:text/html,%s" "$s"
}
function to_js_navigate {
	printf "location.href='?https://github.com/zserge/awfice/blob/main/%s';return false" "${1//\'/\\\'}"
}

page=$(cat	<< EOF
<title>Awfice</title>
<meta charset="utf-8">
<base href="https://htmlpreview.github.io/">
<div>
	<a href="$(to_data_url edit.html)" onclick="$(to_js_navigate edit.html)"><b>📝</b>Text editor</a>
	<a href="$(to_data_url calc.html)" onclick="$(to_js_navigate calc.html)"><b>🧮</b>Spreadsheet</a>
	<a href="$(to_data_url draw.html)" onclick="$(to_js_navigate draw.html)"><b>🎨</b>Drawing app</a>
	<a href="$(to_data_url beam.html)" onclick="$(to_js_navigate beam.html)"><b>📽</b>Presentation maker</a>
	<a href="$(to_data_url code.html)" onclick="$(to_js_navigate code.html)"><b>⌨️</b>Code editor</a>
	<a href="https://github.com/zserge/awfice"><b>ℹ️</b>Help</a>
</div>
<footer>Draw an icon to your bookmarks to create a favelet (offline), or click to run online.</footer>
<style>
	div{ 
		display:flex;
		flex-flow:row wrap;
		justify-content:center;
		align-items:center;
		width:80vw;
		height:60vh;
		margin: 10vh auto 30vh auto
	}
	a{ 
		display:block; 
		text-align:center;
		width:125px;
		height:125px;
		margin:5px;
		padding:5px;
		text-decoration:none
	}
	a b{ 
		display:block;
		font-size:75px
	}
	a:active,
	a:hover{
		background:ivory
	}
	footer{
		position:sticky;
		text-align:center;
		bottom:0
	}
EOF
)

# Minify by removing tabs and newlines only
page=${page//$'\t'/}
page=${page//$'\n'/}
printf "%s" "$page"
