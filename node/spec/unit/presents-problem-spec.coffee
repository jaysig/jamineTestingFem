_ = require('lodash')

describe 'presentsProblem', ->
  Given -> @subject = requireSubject('lib/presents-problem')

  context 'a typical problem', ->
    Given -> @problem =
      operator: '-'
      operands:
        left: 39
        right: 8
    When -> @result = @subject(@problem)
    Then -> expect(@result).toEqual _({}).extend @problem,
      description: '39 - 8'
