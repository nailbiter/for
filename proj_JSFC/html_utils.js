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
 	injectJS('http://nailbiter.insomnia247.nl/cgi-bin/tests/FC.cgi?' + JSON.stringify(obj));
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

function wrapIntoParagraph(node)
{
    var oNewP = document.createElement("p");
    oNewP.appendChild(node);
    return oNewP;
}

function makeButtonWithTextAndOnClick(text,onclick)
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
    button.onclick = onclick;
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
