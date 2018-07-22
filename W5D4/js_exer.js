function isSubstring(searchString, substring) {
    if (searchString.includes(substring)) {
        return true;
    } else {
        return false;
    }
}

console.log(isSubstring('I love Ben!', 'Billy'));

//fizzbuzz

function fizzbuzz(array) {
const newArr = []
    array.forEach(element => {
      if ((element % 3 === 0 || element % 5 === 0) 
        && element % 15 !=0 ) {
            newArr.push(element);
        } 
    });
return newArr
}

console.log(fizzbuzz([1,3,4,5,10,15,30,33]));

function isPrime(n) {
   if (n < 2) {
       return false;
   }

   for (let i = 2; i < n;  i++) {
       if (n % i === 0) {
           return false;
       }
   }

   return true;

}

console.log(isPrime(3));
console.log(isPrime(8));
console.log(isPrime(13));

function sumOfNPrimes(n) {
    const results = []
    let i = 2;
    while (results.length < n) {
        
        if (isPrime(i)) {
            results.push(i);
        }
        i++;
    }
console.log(results);

return results.reduce((accumulator, currentValue) => accumulator + currentValue);
}

console.log(sumOfNPrimes(5));

function titleize(names, callback) {
    const titles = names.map(name => "Mx. " + name + " Jingleheimer Schmidt");
    callback(titles);
}

function printCallback(array) {
    array.forEach(el => console.log(el));
}

titleize(["Ben", "Gracie", "Oscar"],printCallback);

function Elephant(name,height,tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
    this.height += 12;
}
Elephant.prototype.addTrick = function (trick) {
    this.tricks += trick;
}
Elephant.prototype.play = function () {
    debugger
    const index = Math.random(this.trick.length)
    console.log(`${this.name} is ${this.trick[index]}`);
}

function dinerBreakfast () {
    
}