function injectJS(source)
{
    var headID = document.getElementsByTagName("head")[0];
    var newScript = document.createElement('script');
    newScript.type = 'text/javascript';
    newScript.src = source;
    headID.appendChild(newScript);
}
function swapIn(array,index,headLen)
{
    randomIndex = Math.floor(Math.random() * headLen);
    //alert("headLen = "+headLen+", randomIndex = "+randomIndex);
    temporaryValue = array[index];
    array[index] = array[randomIndex];
    array[randomIndex] = temporaryValue;
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
