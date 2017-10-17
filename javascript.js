// 8 KYU

// Remember the importance of 'return'

// Counting sheep
function countSheeps(arrayOfSheeps) {
  var trueCount = 0;
  for(var i = 0; arrayOfSheeps.length; i++) {
    if(arrayOfSheeps[i] === true) {
      trueCount++;
    }
    return trueCount;
  }
}

// OR

function countSheeps(arrayOfSheeps) {
  return arrayOfSheeps.filter(Boolean).length;
}

// Math

// Return Negative
function makeNegative(num) {
  return -Math.abs(num)
}

// Square(n)Sum
function squareSum(numbers) {
  var sum = 0;
  i = numbers.length

  while(i--)
  sum += Math.pow(numbers[i], 2)
  return sum;
}
