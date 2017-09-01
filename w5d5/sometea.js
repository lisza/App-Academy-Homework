const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stout
});

function teaAndBiscuits(){
  reader.question("Would you like some tea?", function(response1){
      console.log(`Your response was ${response1}.`);
      reader.question("Would you like some biscuits?", function (response2) {
        console.log(`Your response was ${response2}.`);

      const tea = (response1 === 'yes') ? 'do' : 'don\'t';
      const biscuits = (response2 === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${tea} want tea and you ${biscuits} want biscuits.`);
      reader.close();
    });
  });
}
