describe 'rendering the UI', ->
  Given -> @$container = affix('.main')
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> '<div>lol</div>'
  When -> window.createApplication()
  # When always runs after ALL givens, should be a Given here
  Then -> @$container.find('div').text() == 'lol'

  describe 'fetching a new problem', ->
    Given -> @$button = @$container.affix('button.new-problem')
    When -> @$button.trigger('click')
    Then  -> expect($.get).toHaveBeenCalledWith('/problem')
