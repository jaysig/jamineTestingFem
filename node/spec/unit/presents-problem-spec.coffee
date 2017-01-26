describe 'presentsProblem', ->
  Given -> @subject = requireSubject('lib/presents-subject')

  context 'a typical problem', ->
    Given -> @problem =
      operator: '-'
      operands:
        left: 39
        right: 8
    When -> @result = @subject(@problem)
    Then -> @result.description == '39 - 8'
