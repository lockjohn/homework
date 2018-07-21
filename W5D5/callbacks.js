const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function wouldYouLikeSomeTea() {
  reader.question("Would you like some tea? ", function (firstanswer) {
    console.log(`You replied ${firstanswer}`);
    
    reader.question("Would you like some biscuits? ", function (secondanswer) {
      console.log(`you replied ${secondanswer}`);
      
      const firstRes = (firstanswer === 'yes') ? 'do' : 'don\'t';
      const secondRes = (secondanswer === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();  
    });
  });
}

wouldYouLikeSomeTea();