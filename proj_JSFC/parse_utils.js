function parseQuiz(lines)
{
    var quiz = {};
    var pre = [preGlobalSection, preGenerators, preDataItems];
    var proc = [procGlobalSection, procGenerators, procDataItems];
    var post = [postGlobalSection, postGenerators, postDataItems];

    var sectionCount = 0;
    pre[0](quiz);
    for( var lineCount = 0; lineCount < lines.length; lineCount++ )
    {
        var line = lines[lineCount];
        if( line.substring(0,4) == "####" )
        {

            post[sectionCount](quiz);
            sectionCount++;
            pre[sectionCount](quiz);
            continue;
        }
        proc[sectionCount](quiz);
    }
    return quiz;
}

function parseGenerator(line)
{
}

function preGlobalSection(quiz)
{
{
    //TODO
}
function procGlobalSection(quiz, line)
{
    if(line.substring(0,1) == '#')
        return;
    //TODO
}
function postGlobalSection(quiz)
{
    //TODO
}
function preGenerators(quiz)
{
    quiz.generators = [];
}
function procGenerators(quiz, line)
{
    var generator = parseGenerator(line);
    if( generator != {} )
        quiz.generators.push(generator);
}
function postGenerators(quiz) {}
function preDataItems(quiz)
{
    if(line.substring(0,1) == '#')
        return;
    //TODO
}
function procDataItems(quiz, line)
{
    //TODO
}
function postDataItems(quiz) {}
