function removeById(id)
{
    var element=document.getElementById(tableid);
    element.parentNode.removeChild(element);
}
function butt(){
    alert("gotcha");
}
function print_test(lines)
{
    {
        var oNewP = document.createElement("p");
        var oText = document.createTextNode("length: "+lines.length);
        oNewP.appendChild(oText);
        document.body.appendChild(oNewP);
    }
    for( var i = 0; i < lines.length; i++ )
    {
        var oNewP = document.createElement("p");
        var oText = document.createTextNode(lines[i]);
        oNewP.appendChild(oText);
        document.body.appendChild(oNewP);
    }
    var button = document.createElement("button");
    var buttonText = document.createTextNode("button");
    button.appendChild(buttonText);
    button.onclick=butt;
    document.body.appendChild(button);
}
