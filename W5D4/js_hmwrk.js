function mysteryScoping1() {
  var x = 'out of block';
  if (true) { //what is 'true' here?
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

//output is in block x2 - var x out of block definition is not returned too
  // mysteryScoping1()

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//output is in block, out block, so with const x is not changed
  // mysteryScoping2()

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//throws error - const x is already defined in the scope of this outer function
// mysteryScoping3()

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
//this one works, in block, then out of block
// mysteryScoping4()

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}
//this one says 'x has already been declared' for that scope
// mysteryScoping5()

// madlibs
function madLibs(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`)
}

madLibs('cry', 'strong', 'individual')

function isSubstring(string, substring) {
  return(string.includes(substring));
}

isSubstring("this is string", "is")
