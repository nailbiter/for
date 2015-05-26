var server_location = "http://people.cs.nctu.edu.tw/~inp9822058/tests/FC.cgi"

function injectJS(source)
{
    var headID = document.getElementsByTagName("head")[0];
    var newScript = document.createElement('script');
    newScript.type = 'text/javascript';
    newScript.src = source;
    headID.appendChild(newScript);
}

function jsonp(callback,arg,cmd)
{ 
	var obj = {};
	obj.callback = callback;
	obj.arg = arg;
	obj.cmd = cmd;
 	injectJS(server_location+'?'+ JSON.stringify(obj));
}

function xmlRequest(callback,arg,cmd,async)
{
    if( async != true ) async = false;
    var url = server_location;
    var obj = {};
    obj.callback = callback;
    obj.arg = arg;
    obj.cmd = cmd;
    var client = new XMLHttpRequest();
    if( async )
        client.onreadystatechange = function ()
        {
            if (client.readyState==4 && client.status==200) eval(client.responseText);
        }
    client.open("POST", url, async);
    client.setRequestHeader("Content-Type", "text/plain");
    client.send(JSON.stringify(obj));
    var responseText = client.responseText;
    if( !async ){ eval(client.responseText); }
}

function writeFile(name,obj)
{
    var url = "http://nailbiter.insomnia247.nl/cb/tests/FC.cgi?"+name;
    var client = new XMLHttpRequest();
    client.open("POST", url, false);
    client.setRequestHeader("Content-Type", "text/plain");
    client.send(JSON.stringify(obj));//TODO: can be asynchronous
}

function printTable(what)
{
        var table = document.createElement('TABLE');
        table.border='1';

        var tableBody = document.createElement('TBODY');
        table.appendChild(tableBody);

        for (var i = 0; i < what.length; i++)
        {
            var tr = document.createElement('TR');
            tableBody.appendChild(tr);
            for( var j = 0; j < what[i].length; j++ )
            {
                var td = document.createElement('TD');
                td.width='175';//FIXME: make a parameter
                td.appendChild(what[i][j]);
                tr.appendChild(td);
            }
        }
        return table;
}

function printTableText(what)
{
        var table = document.createElement('TABLE');
        table.border='1';

        var tableBody = document.createElement('TBODY');
        table.appendChild(tableBody);

        for (var i = 0; i < what.length; i++)
        {
            var tr = document.createElement('TR');
            tableBody.appendChild(tr);
            for( var j = 0; j < what[i].length; j++ )
            {
                var td = document.createElement('TD');
                td.width='175';//FIXME: make a parameter
                td.appendChild(document.createTextNode(what[i][j]));
                tr.appendChild(td);
            }
        }
        return table;
}

function removeById(id)
{
    var element=document.getElementById(id);
    console.log("removeById: "+element);
    element.parentNode.removeChild(element);
}

function deleteAllChildren(node)
{
    while( node.hasChildNodes() ) node.removeChild(node.lastChild);
}

function createLink(href,title, newTab)
{
    var a = document.createElement("a");
    var linkText = document.createTextNode(title);
    a.appendChild(linkText);
    if( newTab == true ) a.target="_blank";
    a.title = title;
    a.href = href;
    return a;
}

function wrapIntoParagraph(node)
{
    var oNewP = document.createElement("p");
    oNewP.appendChild(node);
    return oNewP;
}

function makeButtonWithTextAndOnClick(text,onclick,data)
{
	if( !iOS )
	{
		var button = document.createElement("button");
		var t = document.createTextNode(text);
		var h = document.createElement("H2");
		h.appendChild(t);
		button.appendChild(h);
	}
	else
	{
		var button = document.createElement("input");
		button.type = "button";
		button.value = text;
	}
    if( typeof(data) == "undefined" )
        button.onclick = onclick;
    else
        button.onclick = function(){ onclick(data); }
    return button;
}

function makeButtonWithTextOnClickAndID(text,onclick,id)
{
    var button = makeButtonWithTextAndOnClick(text,onclick);
    button.id = id;
    return button;
}

function setButtonText(button,text)
{
	if( !iOS )
    {
        button.innerHTML = "<h2>" + text + "</h2>";
    }
	else
		button.value = text;
}

function hideAllDivs()
{
    var divs = document.getElementsByTagName("div");
    for(var i = 0; i < divs.length; i++)
        divs[i].hidden = true;
}
