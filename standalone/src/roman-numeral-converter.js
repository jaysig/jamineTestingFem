window.ConvertsNumerals = function() {

  var numMap = {
    "I":   1,
    "II":  2,
    "III": 3,
    "IV":  4,
    "X":  10,
  }


  this.fromRoman = function(input) {
    return numMap[input]
  }
};
