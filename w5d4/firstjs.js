
function madlib(verb, adj, noun) {
  verb = verb.toUpperCase()
  adj = adj.toUpperCase()
  noun = noun.toUpperCase()
  return `We shall ${verb} the ${adj} ${noun}`;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);


// Loops

// Takes an array and returns a new array of every number in the array
// that is divisible by either 3 or 5, but not both.
function fizzBuzz(array) {
  let fizzBuzzArray = [];
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 15 != 0) {
      if (array[i] % 3 === 0 || array[i] % 5 === 0) {
        fizzBuzzArray.push(array[i]);
      }
    }
  }
  console.log(fizzBuzzArray);
}

function isPrime(number) {
  if (number === 1) { return false; }
  for (let i = 2; i < number/2; i++) {
    if (number % i === 0) {
        return false;
    }
  }
  return true
}

function firstNPrimes(n) {
  let primes = [];
  let i = 2;
  while (primes.length < n) {
    if (isPrime(i)) { primes.push(i) }
    i ++;
  }
  return primes;
}

function sumOfNPrimes(n) {
  let primes = firstNPrimes(n);
  let sum = 0;
  for (let i = 0; i < n; i++) {
    sum += primes[i]
  }
  return sum;
}

// Part 2: Callbacks, still kinda broken...
function titleize(array, callback) {
  let titles = array.map(name => `Mx. ${name} Jingleheimer Schmidt`);

  callback(titles);
};


titleize(["Mary", "Brian", "Leo"], (array)) {
  array.forEach(name {
    console.log(name);
  });
}
