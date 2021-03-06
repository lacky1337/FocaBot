AudioFilter = require './base'

class FlangerFilter extends AudioFilter
  constructor: (@param)->
    super()
    @name = 'flanger'
    @display = '[Flanger]'

    @speed = parseFloat(@param) or 0.5
    throw '[Flanger] Speed must not be higher than 10' if @speed > 10
    throw '[Flanger] Speed must not be lower than 0.1' if @speed < 0.1
    @FFMPEGFilter = @escape "flanger=speed=#{@speed}"
    @display = "[Flanger #{@speed}]"

module.exports = FlangerFilter
