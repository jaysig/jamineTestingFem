describe "generatesProblem", ->
  Given -> @subject = requireSubject 'lib/generates-problem',
    './picks-random': @picksRandom = jasmine.createSpy('picksRandom')

  Given -> @picksRandom.when(['+','-','*','/']).thenReturn('+')
  When -> @result = @subject()
  Then -> @result.operator == "+"
