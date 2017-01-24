window.ConvertsNumerals = class ConvertsNumerals

  numMap =
    I:   1
    V:   5
    IV:  4
    X:  10


  fromRoman: (roman)
   result = @numMap[roman]
   if !result
    digits = roman.split('')
    sum = 0
    for d in digits
      sum += @VALUES[d]
    return sum
  result
};
