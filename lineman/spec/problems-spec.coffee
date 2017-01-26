describe 'rendering the UI', ->
  Given -> @$container = affix('.main')
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> '<div>lol</div>'
  Given -> window.createApplication()
  # When always runs after ALL givens, should be a Given here
  Then -> @$container.find('div').text() == 'lol'

  describe 'fetching a new problem', ->
    Given -> @$button = @$container.affix('button.new-problem')
    Given -> spyOn($, 'get')
    Given -> @captor = jasmine.captor() #captures the value
    When -> @$button.trigger('click')
    # When runs last
    And  -> expect($.get).toHaveBeenCalledWith('/problem', @captor.capture())

    describe 'rendering the new problem', ->
      Given -> @$latestProblem = @$container.affix('.latest-problem')
      Given -> @problem = description: '1 + 1'
      #all problems have a description
      When -> @captor.value(@problem)
      Then -> @$latestProblem.text() == "1 + 1"
