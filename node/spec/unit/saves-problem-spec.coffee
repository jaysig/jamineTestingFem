_ = require('lodash')
describe 'savesProblem', ->
  Given -> @subject = requireSubject('lib/saves-problem')

  Given -> @problem = fake: 'problem stuff'
  When  -> @result = @subject(@problem)
  Then  -> _(@result.id).isNumber()
  And   -> @result.fake == 'problem stuff'
