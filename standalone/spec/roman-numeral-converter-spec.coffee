# "I" 1
# "II" 2
# "IV" 4
# "X" 10

describe "RomanNumeralThing", =>
  Given -> @subject = new ConvertsNumerals()

  Then  -> @subject.fromRoman("I")   == 1
  Then  -> @subject.fromRoman("II")  == 2
  Then  -> @subject.fromRoman("III") == 3
  Then  -> @subject.fromRoman("IV")  == 4
  Then  -> @subject.fromRoman("X")  == 10
