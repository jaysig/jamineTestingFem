generatesProblem = require '.generatesProblem'
savesProblem = require './saves-problem'
presentsProblem = require './presents-problem'

module.export = ->
  presentsProblem(savesProblem(generatesProblem()))
