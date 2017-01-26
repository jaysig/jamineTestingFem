describe 'picksRandom', ->
  Given -> @subject = requireSubject('lib/picks-random')
  #No dependencies, leaf node, therefore no mocks./test doubles

  Then -> @subject([]) == undefined
  Then -> @subject(["foo"]) == "foo"
