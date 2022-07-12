function madlib(verb, adj, noun) {
    console.log (`We shall ${verb} the ${adj} ${noun}`);
}

// madlib('make', 'best', 'guac')


function isSubstring(searchString, subString) {
    console.log (searchString.includes(subString));
}

// isSubstring("jump for joy", "joys")

function fizzBuzz(array) {
    const new_array = [];
    array.forEach(checkNum);

    function checkNum(num) {
        if ((num % 3 === 0 || num % 5 === 0) && !(num % 3 === 0 && num % 5 === 0)) {
            new_array.push(num);
        }
    }
    return new_array
}

// console.log(fizzBuzz([5, 24, 67, 3, 15]))



