_ = require('lodash')

module.exports = (problem) ->
  _(problem).tap (problem) ->
    problem.id = 1
