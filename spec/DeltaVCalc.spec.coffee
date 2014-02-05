#Tests for the deltavcalc coffee file
DeltaVCalc = require('../lib/DeltaVCalc').DeltaVCalc

describe 'DeltaV Calc, when constructed without a universe', ->
  beforeEach ->
    @cacl = new DeltaVCalc(null)
    
  it 'can calculate a Hohmann transfer to a elliptical orbit', ->
    expect(@cacl.calcHohmannToElliptical(3530.461, 100, 200, 600)).toEqual 73.65
  
  it 'can calculate a Hohmann transfer to a circular orbit', ->
    expect(@cacl.caclHohmannToCircularise(3530.461, 100, 200, 600)).toEqual 71.23
  
  it 'can calculate a full Hohmann transfer to a different orbit', ->
    expect(@cacl.calcHohmannTransfer(3530.461, 100, 200, 600)).toEqual 144.88
