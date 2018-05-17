function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
}

function isSubString(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(array) {
  const results = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      results.push(el);
    }
  })

  return results;
};

function isPrime (n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}

function isPrime(num) {
  if (num < 2) {
    return false;
  }

  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let numberPrimes = 0;

  for (let i = 2; numberPrimes < n; i++) {
    if (isPrime(i)) {
      sum += i;
      numberPrimes++;
    }
  }
  return sum;
}

function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
}

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the Elephant goes 'phrRRRRRRRR!!!!'`);
}

Elephant.prototype.grow = function(){
  this.height = this.height + 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}`);
}

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please!"
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please!`;
    console.log(order);
  };
};
