// Count number of vowels in a string

function getCount(str) {
  var count = str.match(/[aeiou]/gi);
  return count === null ? 0 : count.length;
  }
}

// Return string with double of its characters
function doubleChar(Str) {
  return str.replace(/(.)/g, "$1$1")
}

function doubleChar(str) {
  var word= '';
  for (var i = 0; i < str.length; i++) {
    word = word + str[i] + str[i];
  };
  return word;
}
