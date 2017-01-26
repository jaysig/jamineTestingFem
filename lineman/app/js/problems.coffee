window.createApplication = ->
  ($main = $('.main')).html(JST['app/templates/problems.us']())

  $main.on 'click', 'button.new-problem', ->
    $.get '/problem', (problem) ->
      $main.find('.latest-problem').text(problem.description)
$ ->
  createApplication()
