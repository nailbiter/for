test = {};
iOS = ( navigator.userAgent.match(/(iPad|iPhone|iPod)/g) ? true : false );
mytable = document.getElementById("mytable");
myeditform = document.getElementById("myeditform");
index = -1;

function editItem()
{
    editItemIndex(parseInt(this.id));
}

function editItemIndex(idx)
{
    index = idx;
    if(idx<0)
    {
        var item = {};
        item.items = ["","",""];
        item.tags = [""];
        test.dataitems.push(item);
        index = test.dataitems.length-1;
    }
    mytable.hidden = true;
    myeditform.hidden = false;
    document.forms["myForm"]["question"].value = test.dataitems[index].items[0]
    document.forms["myForm"]["hint"].value=test.dataitems[index].items[1];
    document.forms["myForm"]["answer"].value=test.dataitems[index].items[2];
    document.forms["myForm"]["tag"].value=test.dataitems[index].tags[0];
}

function saveItem() 
{
    test.dataitems[index].items[0]=document.forms["myForm"]["question"].value ;
    test.dataitems[index].items[1]=document.forms["myForm"]["hint"].value;
    test.dataitems[index].items[2]=document.forms["myForm"]["answer"].value;
    test.dataitems[index].tags[0]=document.forms["myForm"]["tag"].value;

    myeditform.hidden = true;
    Afunction(null);
}

function Afunction(a)
{
    if(a!=null) test = a[0];

    hideAllDivs();
    mytable.hidden = false;
    deleteAllChildren(mytable);
    mytable.appendChild(makeButtonWithTextAndOnClick("submit",mysubmit));
    mytable.appendChild(makeButtonWithTextAndOnClick("add",function(){editItemIndex(-1)}));
    mytable.appendChild(makeButtonWithTextAndOnClick("add tag",addTag));

    var table = document.createElement('TABLE');
    table.border='1';

    var tableBody = document.createElement('TBODY');
    table.appendChild(tableBody);

    for (var i=0; i<test.dataitems.length; i++)
    {
        var tr = document.createElement('TR');
        tr.id = i.toString();
        tableBody.appendChild(tr);
        var texts = [
            document.createTextNode(test.dataitems[i].items[0]),
            document.createTextNode(test.dataitems[i].items[1]),
            document.createTextNode(test.dataitems[i].items[2]),
            document.createTextNode(test.dataitems[i].tags[0]),
                makeButtonWithTextOnClickAndID("edit",editItem,i.toString())
        ];

        for( var j = 0; j < texts.length; j++ )
        {
            var td = document.createElement('TD');
            td.width='175';
            td.appendChild(texts[j]);
            tr.appendChild(td);
        }
    }
    mytable.appendChild(table);
}

function mydelete()
{
    test.dataitems.splice(index,1);

    myeditform.hidden = true;
    Afunction(null);
}

function saveItem() 
{
    test.dataitems[index].items[0]=document.forms["myForm"]["question"].value;
    test.dataitems[index].items[1]=document.forms["myForm"]["hint"].value;
    test.dataitems[index].items[2]=document.forms["myForm"]["answer"].value;
    test.dataitems[index].tags[0]=document.forms["myForm"]["tag"].value;

    var obj = [index, test.dataitems[index]];
    xmlRequest("alert",obj,"write");

    if( document.forms["myForm"]["resubmit"].checked == false )
    {
        myeditform.hidden = true;
        Afunction(null);
    }
    else
    {
        document.forms["myForm"]["answer"].focus();
        document.forms["myForm"]["question"].value = "";
        document.forms["myForm"]["hint"].value = "";
        document.forms["myForm"]["answer"].value = "";
        var item = {};
        item.items = ["","",""];
        item.tags = [""];
        test.dataitems.push(item);
        index = test.dataitems.length-1;
    }
}

function editItemIndex(idx)
{
    index = idx;
    if(idx<0)
    {
        var item = {};
        item.items = ["","",""];
        item.tags = [""];
        test.dataitems.push(item);
        index = test.dataitems.length-1;
    }
    mytable.hidden = true;
    myeditform.hidden = false;
    document.forms["myForm"]["question"].value = test.dataitems[index].items[0]
    document.forms["myForm"]["hint"].value=test.dataitems[index].items[1];
    document.forms["myForm"]["answer"].value=test.dataitems[index].items[2];
    document.forms["myForm"]["tag"].value=test.dataitems[index].tags[0];
}

function mysubmit()
{
    /*var tags = [];
    for(var i = 0; i < test.dataitems.length; i++ )
        if( tags.indexOf(test.dataitems[i].tags[0]) < 0 )
            tags.push(test.dataitems[i].tags[0]);
    test.generators = [];
    for(var i = 0; i < tags.length; i++ )
    {
        var g = {};
        g.tags = [];
        g.tags.push(tags[i]);
        g.from=0; g.to=2;
        g.type = "sc";
        g.auxTo=[1];
        g.auxText="tap to see";
        g.reflip=true;
        g.enabled = false;
        test.generators.push(g);
    }
    xmlRequest("alert",test,"write");*/
}

function getHira(s){ document.forms["myForm"]["hint"].value = s; }

function addTag()
{
    hideAllDivs();
    var mytagedit = document.getElementById("mytagedit");
    mytagedit.hidden = false;
    document.forms["tagedit"]["arg"].value="";
    document.getElementById('cmdlist').selectedIndex = 0;
}

function alertAndShowTable(msg)
{
    alert(msg);
    hideAllDivs();
    mytable.hidden = false;
}

myeditform.hidden = true;
xmlRequest("Afunction",["ttt.txt"],"get");
