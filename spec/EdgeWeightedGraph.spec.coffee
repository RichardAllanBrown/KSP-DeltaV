#Tests the EdgeWeightedGraph and Edge classes
WeightedEdge = require('../src/WeightedEdgeGraph').WeightedEdge

describe 'Weighted Edge and EdgeWeightedGraph work as expected', ->
  describe 'Weighted edge constructed properly', ->
    @FROM_NODE = 4
    @TO_NODE = 8
    @WEIGHT = 7
    
    beforeEach ->
      @testOption = new WeightedEdge(4, 5, 0)
    
    it 'correctly sets the from Node ID', ->
      expect(@testOption.getFromNode()).toEqual @FROM_NODE
      
    it 'correctly sets the to Node ID', ->
      expect(@testOption.getToNode()).toEqual @TO_NODE
      
    it 'correctly sets the weighting', ->
      expect(@testOption.getWeight()).toEqual @WEIGHT
});
