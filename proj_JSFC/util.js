function myalert(a)
{
    alert("set item "+JSON.stringify(a[0])+" with tag "+a[1]);
}
function shuffle(array) 
{
  var currentIndex = array.length, temporaryValue, randomIndex ;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) 
  {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}

function pushArray(dst,src)
{
    for( var i = 0; i < src.length; i++ )
        dst.push(src[i]);
}

function swapIn(array,index,headLen)
{
    randomIndex = Math.floor(Math.random() * headLen);
    //alert("headLen = "+headLen+", randomIndex = "+randomIndex);
    temporaryValue = array[index];
    array[index] = array[randomIndex];
    array[randomIndex] = temporaryValue;
}

function decodeURLquery(query)
{
    return query.replace(/%22/g,'\"');
}
