// Please complete the codes below to have the function print all the integers from 1 to x.  If x is negative, have it print/log "negative number" and have the function return false.

function printUpTo(x){
    for (var i=1, i<x-1, i++){
        console.log(i);
    }
  }
  printUpTo(1000); // should print all the integers from 1 to 1000
  y = printUpTo(-10); // should return false
  console.log(y); // should print false