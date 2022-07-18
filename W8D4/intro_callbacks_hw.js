// global.setTimeout(function () {
//     alert('HAMMER TIME!');
// }, 5000);

// function hammerTime(time) {
//     global.setTimeout(function () {
//         alert(`${time} is HAMMER TIME!`);
//     }, 5000);
// }

// const readline = require('readline');
// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });
// function teaQuestion(){
//     reader.question('Would you like some tea?', function(answer){
//         console.log(`You replied ${answer}.`);
//         reader.question('Would you like some biscuits?', function(answer2){
//             console.log(`You replied ${answer2}.`);

//             const first = answer === 'yes' ? 'do' : 'don\'t';
//             const second = answer2 === 'yes' ? 'do' : 'don\'t';

//             console.log(`So you ${first} want tea and you ${second} want biscuits.`);
//             reader.close();
//         });
//     });
// }

function Cat () {
    this.name = 'Markov';
    this.age = 3;
  }
  
  function Dog () {
    this.name = 'Noodles';
    this.age = 4;
  }
  
  Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
  };
  
  const Markov = new Cat ();
  const Noodles = new Dog ();

  Noodles.chase(Markov)