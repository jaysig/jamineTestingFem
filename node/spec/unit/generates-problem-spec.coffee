describe "generatesProblem", ->
  Given -> @subject = requireSubject 'lib/generates-problem',
    './picks-random': @picksRandom = jasmine.createSpy('picksRandom')

  Given -> @picksRandom.when(['+','-','*','/']).thenReturn('+')
  Given -> @picksRandom.when([0...100]).thenReturn(5)
  When -> @result = @subject()
  Then -> @result.operator == "+"
  And -> @result.operands.left == 5
  And -> @result.operands.right == 5
