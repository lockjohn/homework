window.setTimeout(function () {
  console.log('hello');
}, 2000);

window.setTimeout(function () {
  alert('HAMMERTIME');
}, 5000);

function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMERTIME!`);
  }, time);
}

// hammerTime(5000);

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

reader.question("Would you like some tea?", function (answer){
  console.log(`Hello ${answer}!`);
});

