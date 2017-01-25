picksRandom = require('./picks-random')

module.exports = ->
  operator: picksRandom(['+','-','*','/'])
