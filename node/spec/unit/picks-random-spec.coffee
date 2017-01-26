_ = require('lodash')
describe 'picksRandom', ->
  Given -> @subject = requireSubject('lib/picks-random')
  #No dependencies, leaf node, therefore no mocks./test doubles

  Then -> @subject([]) == undefined
  Then -> @subject(["foo"]) == "foo"

  context 'picks between two things', ->
    When -> @result = _([0...1000]).map => @subject(['foo','bar'])
    Then -> _(@result).contains('foo')
    And -> _(@result).contains('bar')
