function removeById(id)
{
    var element=document.getElementById(tableid);
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
    var button = document.createElement("button");
    var buttonText = document.createTextNode(text);
    button.appendChild(buttonText);
    button.onclick = onclick;
    return button;
}

function print_test(test)
{
    test.questions = [];
    for( var i = 0; i < test.generators.length; i++ )
    {
        if( !test.generators[i].enabled )
            continue;
        if( test.generators[i].type == "si" )
            test.generators[i].answers = [];
        for( var k = 0; k < test.dataitems.length; k++ )
        {
            var j = 0;
            for(; j < test.generators[i].tags.length; j++ )
            {
                if( test.dataitems[k].tags.indexOf(test.generators[i].tags[j]) == -1 )
                    break;
            }
            if( j == test.generators[i].tags.length )
            {
                test.questions.push(makeQuestion(test.generators[i], test.dataitems[k]));
                if( test.generators[i].type == "si" )
                    test.generators[i].answers.push(test.dataitems[k].items[test.generators[i].to]);
            }
        }
    }

    test.selectionMode = makeSelectionMode(test.selectionMode, test);

    var maindiv = document.createElement("div");
    maindiv.id = "maindiv";
    document.body.appendChild(maindiv);

    /*for( var i = 0; i < test.questions.length; i++ )
        maindiv.appendChild(wrapIntoParagraph(document.createTextNode(JSON.stringify(test.questions[i]))));*/

    maindiv.appendChild(makeButtonWithTextAndOnClick("nextQuestion",function()
                {
                    alert("should be " + test.selectionMode.getCurrentIndex());
                    test.selectionMode.goToNextQuestion(null);
                }));

    var button = document.createElement("button");
    var buttonText = document.createTextNode("Edit Generators");
    maindiv.appendChild(button);
    button.appendChild(buttonText);
    button.onclick = function()
    {
        maindiv.hidden = true;
        show_generators(test.generators); 
    };

    var generatorDiv = document.createElement("div");
    generatorDiv.hidden = true;
    generatorDiv.id = "generatorDiv";
    document.body.appendChild(generatorDiv);
}

function show_generators(generators)
{
    var generatorDiv = document.getElementById("generatorDiv");
    var maindiv = document.getElementById("maindiv");
    deleteAllChildren(generatorDiv);
    for( var i = 0; i < generators.length; i++ )
    {
        var oNewP = document.createElement("p");
        var x = document.createElement("INPUT");
        x.type = "checkbox";
        x.id = "generator" + i;
        x.checked = generators[i].enabled;
        oNewP.appendChild(x);
        oNewP.appendChild(document.createTextNode(generatorToString(generators[i])));
        generatorDiv.appendChild(oNewP);
    }

    var oNewP = document.createElement("p");
    var button = document.createElement("button");
    var buttonText = document.createTextNode("continue");
    button.appendChild(buttonText);
    button.onclick = function()
    {
        for( var i = 0; i < generators.length; i++ )
        {
            var x = document.getElementById("generator" + i);
            generators[i].enabled = x.checked;
        }
        //TODO: modify testItems
        generatorDiv.hidden = true;
        maindiv.hidden = false;
    };
    oNewP.appendChild(button);
    generatorDiv.appendChild(oNewP);

    generatorDiv.hidden = false;
}

function generatorToString(generator)
{
    var s = generator.tags[0];
    for( var i = 1; i < generator.tags.length; i++ )
        s += ', ' + generator.tags[i];
    s += '; ' + generator.from + '->' + generator.to;
    s += '; ' + generator.type;
    if( generator.hasOwnProperty("auxText") ) s += '; ' + generator.auxText;
    return s;
}

function makeQuestion(generator, dataItem)
{
    var question = {};
    question.question = dataItem.items[generator.from];
    question.answer = dataItem.items[generator.to];
    if( generator.hasOwnProperty("auxText") )
        question.auxText = generator.auxText;
    question.type = generator.type;

    if( generator.type == "si" )
    {
        question.answers = generator.answers;
    }

    if( generator.type == "ti" ) {}

    if( generator.type == "sc" )
    {
        question.reflip = generator.hasOwnProperty("reflip") ? generator.reflip : false;
    }
    return question;
}
// generate questions --> ui for every question --> **stopCriterion**
