describe 'rendering the UI', ->
  Given -> affix('.main')
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn -> '<div>lol</div>'
  When -> window.createApplication()
  Then -> @$container.find('div').text() == 'lol'
